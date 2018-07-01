# AndroidPHP
PocketMine-MP用phpバイナリです。<br />
Androidでお使いになる場合は、ターミナルエミュレータが必要です。<br />

## 簡単な説明
このphpバイナリは、インターネットに繋がります。  
インターネットに繋げるには、resolv.conf、cacert.pemを用意してください。  
Androidでサーバーを動かすには、PMMPやComposerを各自で用意してください。

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

# インストール方法

#### 動作条件
64bitであること<br />
#### 32bitの場合
32bitの場合は実行時にこのように出ます。(非対応)
```
/system/bin/sh: /data/data/jackpal.androidterm/app_HOME/php: not executable: magic 7F45
```
## バイナリをビルドする際に使用したリポジトリ
https://gitlab.com/2ndLesmi/MuslCrossMake <br />
https://gitlab.com/2ndLesmi/AndroidPhp <br />
https://github.com/pmmp/php-build-scripts <br />

## install
[AndroidPHP-master.zip](https://github.com/DaisukeDaisuke/AndroidPHP/archive/master.zip)  をダウンロードし、ファイルマネージャーで解凍します。<br />
以下のアプリケーションをインストールします。<br />
https://play.google.com/store/apps/details?id=jackpal.androidterm <br />
アプリを起動し、以下のコマンドを入力します。<br />
```
cp /storage/emulated/0/Download/AndroidPHP-master/php /data/data/jackpal.androidterm/app_HOME/php
chmod 777 /data/data/jackpal.androidterm/app_HOME/php
```

## pmmp/Pocketmine-MPのダウンロード
PocketMineフォルダを内部ストレージに作成します。<br />
```
mkdir /storage/emulated/0/PocketMine/
```

最新版のPocketMine-MPもダウンロードし、先ほど作成したフォルダにファイルマネージャーでコピーしましょう。<br />
https://jenkins.pmmp.io/job/PocketMine-MP/lastSuccessfulBuild/artifact/PocketMine-MP.phar <br />

インストール時にソースのPocketMine-MPも必要なのでダウンロードし、先ほど作成したフォルダにファイルマネージャーで展開しましょう<br />
https://github.com/pmmp/PocketMine-MP/archive/master.zip <br />

### 現在の様子
```
/storage/emulated/0/PocketMine $ ls
CONTRIBUTING.md
LICENSE
PocketMine-MP.phar
README.md
composer.json
composer.lock
doxygen.conf
src
start.cmd
start.ps1
start.sh
tests
```

## 実行に必要な設定ファイルをコピー
```
cp /storage/emulated/0/Download/AndroidPHP-master/resolv.conf /storage/emulated/0/PocketMine/resolv.conf
cp /storage/emulated/0/Download/AndroidPHP-master/php.ini /storage/emulated/0/PocketMine/php.ini
```

## Composerのインストール
以下のインストーラをダウンロードし、以下のコマンドを実行しましょう。<br />
https://getcomposer.org/installer

```
cp /storage/emulated/0/Download/installer /storage/emulated/0/PocketMine/installer

cd /storage/emulated/0/PocketMine/
mkdir bin
env TMPDIR='/storage/emulated/0/PocketMine/tmp' LESMI_RESOLV_CONF_DIR='/storage/emulated/0/PocketMine/resolv.conf' /data/data/jackpal.androidterm/app_HOME/php -c /storage/emulated/0/PocketMine/php.ini installer --install-dir=bin
```

## 前提のプログラムをComposerでダウンロード
```
cd /storage/emulated/0/PocketMine/
env TMPDIR='/storage/emulated/0/PocketMine/tmp' LESMI_RESOLV_CONF_DIR='/storage/emulated/0/PocketMine/resolv.conf' /data/data/jackpal.androidterm/app_HOME/php /storage/emulated/0/PocketMine/bin/Composer.phar install
```

## 起動
```
cd /storage/emulated/0/PocketMine
env TMPDIR='/storage/PocketMine/tmp' LESMI_RESOLV_CONF_DIR=/storage/emulated/0/PocketMine/resolv.conf /data/data/jackpal.androidterm/app_HOME/php -c /storage/emulated/0/PocketMine/php.ini /storage/emulated/0/PocketMine/PocketMine-MP.phar
```
#### 初期起動時のセットアップウィザード
初期起動時は以下を入力します。
```
jpn
y
y
```
