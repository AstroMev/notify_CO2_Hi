#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# reference :
# @sgrk 様
# https://qiita.com/sgrk/items/366beb3d08f792097f46

# 変更点：
# 最後の標準出力を濃度数値のみに変更


from CO2Meter import *
from time import sleep

# CO2meterが認識されているデバイスを設定
# 他にUSBデバイス挿してると末尾が1とか2とかになってるかもしれません。
sensor = CO2Meter("/dev/hidraw0")
# ちょっと待つ
sleep(10)
# CO2濃度を取得(単位はppm)
data = sensor.get_co2()
# 表示
#print("CO2: {}ppm".format(data["co2"]))
print(data["co2"])
