# インストール方法
環境変数 `LESMI_RESOLV_CONF_DIR` や `SSL_CERT_FILE` は定義済みとしとて、紹介します。

## Composerのインストールとpmmpのインストール
https://github.com/pmmp/PocketMine-MP/archive/master.zip  
をダウンロードして、`/storage/emulated/0/PocketMine/`直下に展開しましょう。  
### Composerのインストール
https://getcomposer.org/installer  
を`/storage/emulated/0/PocketMine/`にコピーしておきましょう、そして以下のコマンドを実行しましょう。  
  
空のbinフォルダが必要なので、`/storage/emulated/0/PocketMine/bin`を作っておきましょう。
```
cd /storage/emulated/0/PocketMine/
/data/data/jackpal.androidterm/app_HOME/php installer --install-dir=bin
```
```
/data/data/jackpal.androidterm/app_HOME/php /storage/emulated/0/PocketMine/bin/Composer.phar install
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
