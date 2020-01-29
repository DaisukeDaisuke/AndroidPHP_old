# AndroidPHP
PocketMine-MP用phpバイナリです。  
Androidでお使いになる場合は、ターミナルエミュレータが必要です。  

## 簡単な説明
このphpバイナリは64bit用です。  
32bitは動作しませんので注意してください。  
  
このphpバイナリは、インターネットに繋がります。  
インターネットに繋げるには、resolv.conf、cacert.pemを用意してください。  
Androidでサーバーを動かすには、PMMPを各自で用意してください。 
 
## 必要なアプリケーション
ここではターミナルエミュレータとして、「Android Terminal Emulator」を使用します。  
  
https://play.google.com/store/apps/details?id=jackpal.androidterm  

## phpのインストール
### phpのダウンロード
PHPのダウンロードは[こちらのreleasesページ](https://github.com/DaisukeDaisuke/AndroidPHP/releases)から出来ます。

releaseページの`7.3.??`なバージョンの`Assets`のタブの中にあります、`php`リンクをクリック致しまして、phpをダウンロード致します。    
![img1](https://user-images.githubusercontent.com/17798680/73345192-f9324300-42c6-11ea-9036-c162bf03c5bd.png)

## phpのインストール
GooglePlayよりダウンロード致しました、「Android Terminal Emulator」を起動致しまして、以下のコマンドを実行致します。

```
cp /storage/emulated/0/Download/php /data/data/jackpal.androidterm/app_HOME/php
chmod 777 /data/data/jackpal.androidterm/app_HOME/php
```

## 各ファイルのダウンロード
`resolv.conf`,`cacert.pem`,`php.ini`ファイルに関しましては、以下のダウンロードリンクよりダウンロードしてください。  
  
[cacert.pem](http://curl.haxx.se/ca/cacert.pem)  
[resolv.conf](https://www.dropbox.com/s/xwta1aobds1557e/resolv.conf?dl=1)   
[php.ini](https://www.dropbox.com/s/k2sk6u8aefwnr5x/php.ini?dl=1)    

 ## 各ファイルの配置
 ダウンロード致しました、`cacert.pem`,`resolv.conf`,`php.ini`ファイルをすべて、
 `/storage/emulated/0/PocketMine/config/`フォルダにコピーしましょう。 
 
## pmmpのインストール
https://jenkins.pmmp.io/job/PocketMine-MP/lastSuccessfulBuild/artifact/PocketMine-MP.phar  
ファイルをダウンロード致しまして、
`/storage/emulated/0/PocketMine/`にコピーしましょう。

## 起動
GooglePlayよりダウンロード致しました、「Android Terminal Emulator」を起動致しまして、以下のコマンドを実行致します。
```
cd /storage/emulated/0/PocketMine/
env LESMI_RESOLV_CONF_DIR=/storage/emulated/0/resolv.conf SSL_CERT_FILE=/storage/emulated/0/cacert.pem /data/data/jackpal.androidterm/app_HOME/php -c /storage/emulated/0/PocketMine/php.ini /storage/emulated/0/PocketMine/PocketMine-MP.phar
```
