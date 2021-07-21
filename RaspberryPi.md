## RaspberryPi
### os
As for the os, Please use ubuntu or archLinux. (64bit) 
https://ubuntu.com/download/raspberry-pi  

## Install php and pmmp
Uses 30mb of network.
```
mkdir pmmp
cd pmmp
wget https://github.com/DaisukeDaisuke/AndroidPHP/releases/latest/download/php-gd
wget https://jenkins.pmmp.io/job/PocketMine-MP/lastSuccessfulBuild/artifact/PocketMine-MP.phar
mv ./php-gd ./php
chmod 777 php
echo '#!/usr/bin/env bash' >> start.sh
echo 'DIR="$(cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"' >> start.sh
echo 'cd "$DIR"' >> start.sh
echo './php ./PocketMine-MP.phar' >> start.sh
chmod 777 start.sh
cd ../
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
