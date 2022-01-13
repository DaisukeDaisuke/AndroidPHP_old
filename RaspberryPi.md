## RaspberryPi
select version(coming soon)
- [Android 4-6](https://github.com/DaisukeDaisuke/AndroidPHP/blob/master/README.md)  
- Android 7+
- Raspberry Pi 3b,4b (experimental)
### os
As for the os, Please use ubuntu or archLinux. (64bit)   
https://ubuntu.com/download/raspberry-pi    
  
## Install php and pmmp
Uses 30mb of network.
```
mkdir pmmp
cd pmmp
wget -O "php" https://bit.ly/3BoSMMZ
wget -O "PocketMine-MP.phar" https://bit.ly/3Dfk8WU
wget -O "start.sh" https://bit.ly/3eEcESG
chmod 777 php
chmod 777 start.sh
cd ../
```
#### Link destination of shortened url
```
https://bit.ly/3BoSMMZ = https://github.com/DaisukeDaisuke/AndroidPHP/releases/latest/download/php-gd
https://bit.ly/3Dfk8WU = https://github.com/pmmp/PocketMine-MP/releases/latest/download/PocketMine-MP.phar
https://bit.ly/3eEcESG = https://gist.githubusercontent.com/DaisukeDaisuke/341ff68b0e92f3d0fbcd1a59d58042b8/raw/7edfe57ea0122a2c12f8a3cdb4ead8263eb38c0e/start.sh
(https://gist.github.com/DaisukeDaisuke/341ff68b0e92f3d0fbcd1a59d58042b8)
```
## Start the server
```
cd pmmp
./start.sh
```
or
```
./start.sh
```
or
```
./pmmp/start.sh
```

## update server
First, Please stop the server.
```
cd pmmp
rm PocketMine-MP.phar
wget -O "PocketMine-MP.phar" https://bit.ly/3kzwja2
```

## Q&A
### Q: The server displays the following warning at startup.
```
[Server thread/WARNING]: ChunkUtils extension is missing. Anvil-format worlds will experience degraded performance.
[Server thread/WARNING]: Debugging assertions are enabled. This may degrade performance. To disable them, set `zend.assertions = -1` in php.ini.
```
### A: Since this is an intended warning, it is possible to safely ignore the warning.
