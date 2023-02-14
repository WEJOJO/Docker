#!/bin/bash

service mysql start
#cd /usr/sbin/
#mysqld

mysql -uroot <<- EOSQL
	CREATE DATABASE ${WORDPRESS_DB_NAME};
	CREATE USER '${WORDPRESS_DB_USER}'@'${WORDPRESS_DB_USER}' IDENTIFIED BY '${WORDPRESS_DB_PASSWORD}';
	FLUSH PRIVILEGES;
EOSQL

mysqladmin -uroot -p${MYSQL_PASSWORD} shutdown

exec "$@"
