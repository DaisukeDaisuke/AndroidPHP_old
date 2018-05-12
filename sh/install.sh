#!/bin/sh
if [ -w /data/data/jackpal.androidterm/app_HOME/ ]; then
	if [ -e /storage/emulated/0/Download/php ]; then
		echo "/data/data/jackpal.androidterm/app_HOME/にphpをインストールします。"
		cp /storage/emulated/0/Download/php /data/data/jackpal.androidterm/app_HOME/php
		chmod 777 /data/data/jackpal.androidterm/app_HOME/php
		echo "完了しました。"
		echo "実行に必要なファイルを/storage/emulated/0/PocketMineにコピーします"
		if [ ! -e /storage/emulated/0/PocketMine ]; then
			mkdir /storage/emulated/0/PocketMine/
		fi
		if [ ! -e /storage/emulated/0/PocketMine/resolv.conf ]; then
			echo "/storage/emulated/0/PocketMine/resolv.conf ..."
			echo "nameserver 8.8.8.8" >> /storage/emulated/0/PocketMine/resolv.conf
			echo "nameserver 8.8.4.4" >> /storage/emulated/0/PocketMine/resolv.conf
		fi
		if [ ! -e /storage/emulated/0/PocketMine/php.ini ]; then
			echo "/storage/emulated/0/PocketMine/php.ini ..."
			echo "date.timezone=JST" >> /storage/emulated/0/PocketMine/php.ini
			echo "short_open_tag=0" >> /storage/emulated/0/PocketMine/php.ini
			echo "asp_tags=0" >> /storage/emulated/0/PocketMine/php.ini
			echo "phar.readonly=0" >> /storage/emulated/0/PocketMine/php.ini
			echo "phar.require_hash=1" >> /storage/emulated/0/PocketMine/php.ini
			echo "igbinary.compact_strings=0" >> /storage/emulated/0/PocketMine/php.ini
			echo "zend.assertions=-1" >> /storage/emulated/0/PocketMine/php.ini
			echo "error_reporting=-1" >> /storage/emulated/0/PocketMine/php.ini
			echo "display_errors=1" >> /storage/emulated/0/PocketMine/php.ini
			echo "display_startup_errors=1" >> /storage/emulated/0/PocketMine/php.ini
		fi

	else
		echo "/storage/emulated/0/Download/phpが存在しません。"
	fi
else
	echo "/data/data/jackpal.androidterm/app_HOME/ にアクセス出来ませんでした。"
	echo "Android Terminal Emulatorで実行していますか?"
fi
