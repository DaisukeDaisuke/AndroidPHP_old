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
wget -O "PocketMine-MP.phar" https://bit.ly/3kzwja2
mv ./3kzwja2 ./PocketMine-MP.phar
chmod 777 php
echo '#!/usr/bin/env bash' >> start.sh
echo 'DIR="$(cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"' >> start.sh
echo 'cd "$DIR"' >> start.sh
echo './php ./PocketMine-MP.phar' >> start.sh
chmod 777 start.sh
cd ../
```
#### Link destination of shortened url
```
https://bit.ly/3BoSMMZ = https://github.com/DaisukeDaisuke/AndroidPHP/releases/latest/download/php-gd
https://bit.ly/3kzwja2 = https://jenkins.pmmp.io/job/PocketMine-MP/lastSuccessfulBuild/artifact/PocketMine-MP.phar
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
rm ./PocketMine-MP.phar
wget -O "PocketMine-MP.phar" https://bit.ly/3kzwja2
```

## Q&A
### Q: The server displays the following warning at startup.
```
[Server thread/WARNING]: ChunkUtils extension is missing. Anvil-format worlds will experience degraded performance.
[Server thread/WARNING]: Debugging assertions are enabled. This may degrade performance. To disable them, set `zend.assertions = -1` in php.ini.
```
### A: Since this is an intended warning, it is possible to safely ignore the warning.
