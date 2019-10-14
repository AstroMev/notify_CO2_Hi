# notify_CO2_Hi

**やりたいこと**

部屋の二酸化炭素濃度をモニタし、  
濃度が高くなったら MacOS の通知機能で換気を促す。  

[カスタム (CUSTOM) CO2モニター CO2-mini](https://www.amazon.co.jp/dp/B00I3XJ9LM)  
[CO2Meter (データ読み出しライブラリ)](https://github.com/heinemml/CO2Meter)  


**利点**

狭い部屋で作業をしていると、集中力が落ちて眠気を感じやすい。  
これは部屋の二酸化炭素濃度が高くなることが原因。  

厚生労働省が決めた「建築物環境衛生管理基準」によると、

> 二酸化炭素の含有率　100万分の1000以下（＝1000 ppm以下）  

と規定されている。  
[建築物環境衛生管理基準について](https://www.mhlw.go.jp/bunya/kenkou/seikatsu-eisei10/)  

二酸化炭素濃度が 1000 ppm を超えた時に、  
MacOS の通知機能で換気を促し、快適な住環境を提供する。  


**使い方**

1. CO2Meter を Raspberry Pi にインストール  
$ pip install git+https://github.com/heinemml/CO2Meter
1. show_CO2.py を Raspberry Pi 上の任意フォルダに置く  
1. notify_CO2_Hi.zsh を MacPC 上の任意フォルダに置く  
show_CO2.py のフォルダ位置、無線LANの SSID を登録する。  
1. cron を設定する  
notify_CO2_Hi.zsh のフォルダ位置を登録して、  
$ crontab cron.conf  


**通知画面**

PC画面右上に以下の通知が表示される。  
![notify_screen](https://user-images.githubusercontent.com/35166412/66727797-60dd9300-ee7c-11e9-9665-1760a643d4d9.png)
