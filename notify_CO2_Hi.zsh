#!/usr/bin/env zsh

home_ssid="xxx" # 無線LAN の ssid を入力する
src_dir="" # Raspberry Pi に置いた show_CO2.py のフォルダパス

ssid=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | /usr/bin/grep -ie '^\s*ssid' | cut -d ':' -f 2 | cut -d ' ' -f 2`

if [ $ssid != $home_ssid ]; then
    exit
fi
   
termnoti="/usr/local/bin/terminal-notifier"
GetCO2="sudo ${src_dir}/show_CO2.py"
co2=`ssh -X pi@raspberrypi.local $GetCO2`
echo "${co2}ppm"

thr=1050 # 測定精度は +/-100ppm らしい。無駄通知を減らすため、精度の 1/2 だけマージンを持たせておく
NumNoti=`$termnoti -list CO2_MON | wc -l` # t-nは同じIDに既に通知がある場合、自動で前の通知を削除してくれる

if test $co2 -gt $thr; then
    $termnoti -message "`echo 換気をお奨めします && echo CO2 : ${co2}ppm`" -title CO2-monitor -group CO2_MON
elif test $NumNoti -gt 0; then
    $termnoti -remove CO2_MON
fi
