#! /bin/bash

dir=${PWD}

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

mkdir -p ~/.lando/cache
#cp -f $dir/config.yml ~/.lando/config.yml
composer install --ignore-platform-reqs -n
blt blt:telemetry:disable --no-interaction
lando blt blt:telemetry:disable --no-interaction
blt amp:landosetup $AMP_GH_TOKEN_REPO $AMP_USER
