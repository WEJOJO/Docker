#!/bin/bash

cd /tmp
mv wp-config.php /var/www/html
cd /var/www/html
apt-get update
apt-get install -y curl
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core install --url=nhwang.42.fr --title=nhwangtest --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=hni1124@naver.com --allow-root

wp user create ${WORDPRESS_USER} skadlr650@gmail.com --user_pass=${WORDPRESS_USER_PASS} --allow-root


exec "$@"
