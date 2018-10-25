# AndroidPHP
PocketMine-MP用phpバイナリです。  
Androidでお使いになる場合は、ターミナルエミュレータが必要です。  

## 簡単な説明
このphpバイナリは64bit用です。  
32bitは動作しませんので注意してください。  
  
このphpバイナリは、インターネットに繋がります。  
インターネットに繋げるには、resolv.conf、cacert.pemを用意してください。  
Androidでサーバーを動かすには、PMMPやComposerを各自で用意してください。 
 
## 必要なアプリケーション
ここではターミナルエミュレータとして、「Android Terminal Emulator」を使用します。  
  
https://play.google.com/store/apps/details?id=jackpal.androidterm  

## phpのインストール
phpはこのリポジトリにあります。 Download ZIPして使ってください。   
  
古いPHPバージョンのダウンロードは[こちらのreleasesページ](https://github.com/DaisukeDaisuke/AndroidPHP/releases)から出来ます。
```
cp /storage/emulated/0/Download/AndroidPHP-master/php /data/data/jackpal.androidterm/app_HOME/php
chmod 777 /data/data/jackpal.androidterm/app_HOME/php
```

## 各ファイルのダウンロード
resolv.confはこのリポジトリにあります。 Download ZIPして使ってください。  
cacert.pemは以下からダウンロードしてください。  
  
[cacert.pem](http://curl.haxx.se/ca/cacert.pem)  
  
### 指定方法
resolv.confは LESMI_RESOLV_CONF_DIR 環境変数で指定できます。  
  
cacert.pemは SSL_CERT_FILE 環境変数で指定できます。
```
export LESMI_RESOLV_CONF_DIR=/sdcard/resolv.conf
export SSL_CERT_FILE=/sdcard/cacert.pem

/data/data/jackpal.androidterm/app_HOME/php -r "echo file_get_contents('http://www.example.com/');"
```

### pmmpのインストール
https://jenkins.pmmp.io/job/PocketMine-MP/lastSuccessfulBuild/artifact/PocketMine-MP.phar  
を`/storage/emulated/0/PocketMine/`にコピーしておきましょう。

## 起動
環境変数の定義を忘れないようにしましょう。  
```
export LESMI_RESOLV_CONF_DIR=/sdcard/resolv.conf
export SSL_CERT_FILE=/sdcard/cacert.pem

cd /storage/emulated/0/PocketMine
/data/data/jackpal.androidterm/app_HOME/php /storage/emulated/0/PocketMine/PocketMine-MP.phar
```
