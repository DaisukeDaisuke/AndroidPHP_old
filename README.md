# AndroidPHP
PocketMine-MP用phpバイナリです。<br />
Androidでお使いになる場合は、ターミナルエミュレータが必要です。<br />

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

## install
[7.2.4-Android-AArch64-x64.zip](https://github.com/DaisukeDaisuke/pocketmine-mp_Android_64bit/blob/master/binary/7.2.4-Android-AArch64-x64.zip?raw=true)  をダウンロードし、解凍します。<br />
以下のアプリケーションをインストールします。<br />
https://play.google.com/store/apps/details?id=jackpal.androidterm <br />
アプリを起動し、以下のコマンドを入力します。<br />
```
cp /sdcard/Download/php /data/data/jackpal.androidterm/app_HOME/php
chmod 777 /data/data/jackpal.androidterm/app_HOME/php
```

## pmmp/Pocketmine-MPのダウンロード

最新版のPocketMine-MPもダウンロードし、`/sdcard/PocketMine/`か任意のフォルダに展開しましょう。<br />
https://jenkins.pmmp.io/job/PocketMine-MP/lastSuccessfulBuild/artifact/PocketMine-MP.phar <br />

インストール時にソースのPocketMine-MPも必要なのでダウンロードし、`/sdcard/PocketMine/`か任意のフォルダに展開しましょう。<br />
https://github.com/pmmp/PocketMine-MP/archive/master.zip <br />

### 現在の様子
```
/sdcard/PocketMine $ ls
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
cp /sdcard/Download/resolv.conf /sdcard/PocketMine/resolv.conf
cp /sdcard/Download/php.ini /sdcard/PocketMine/php.ini
```

## Composerのインストール
以下のインストーラをダウンロードし、以下のコマンドを実行しましょう。<br />
https://getcomposer.org/installer

```
cp /sdcard/Download/installer /sdcard/PocketMine/installer

cd /sdcard/PocketMine/
mkdir bin
env TMPDIR='/sdcard/PocketMine/tmp' LESMI_RESOLV_CONF_DIR='/sdcard/PocketMine/resolv.conf' /data/data/jackpal.androidterm/app_HOME/php -c /sdcard/PocketMine/php.ini installer --install-dir=bin
```

## 前提のプログラムをComposerでダウンロード
```
cd /sdcard/PocketMine/
env TMPDIR='/sdcard/PocketMine/tmp' LESMI_RESOLV_CONF_DIR='/sdcard/PocketMine/resolv.conf' /data/data/jackpal.androidterm/app_HOME/php /sdcard/PocketMine/bin/Composer.phar install
```

## 起動
```
cd /sdcard/PocketMine
env TMPDIR='/storage/PocketMine/tmp' LESMI_RESOLV_CONF_DIR=/sdcard/PocketMine/resolv.conf /data/data/jackpal.androidterm/app_HOME/php -c /sdcard/PocketMine/php.ini /sdcard/PocketMine/PocketMine-MP.phar
```
#### 初期起動時のセットアップウィザード
初期起動時は以下を入力します。
```
eng
y
y
```