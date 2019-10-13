# notify_CO2_Hi

**やりたいこと**  
部屋の二酸化炭素濃度をモニタし、  
濃度が高くなったら MacOS の通知機能で換気を促す。  

[カスタム (CUSTOM) CO2モニター CO2-mini](https://www.amazon.co.jp/dp/B00I3XJ9LM)  
[データ読み出し](https://github.com/heinemml/CO2Meter)  


**使い方**  
1. CO2Meter を Raspberry Pi にインストール  
1. show_CO2.py を Raspberry Pi 上の任意フォルダに置く  
1. notify_CO2_Hi.zsh を MacPC 上の任意フォルダに置く  
show_CO2.py のフォルダ位置、無線LANの SSID を登録する。  
1. cron を設定する  
notify_CO2_Hi.zsh のフォルダ位置を登録して、  
$ crontab cron.conf
