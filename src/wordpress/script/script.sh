#!/bin/bash

wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz

cd wordpress
mv * ../
cd ../

mkdir -p /run/php
touch /run/php/php7.3-fpm.pid
/usr/sbin/php-fpm7.3


bash
