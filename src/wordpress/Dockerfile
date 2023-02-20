FROM	debian:buster

LABEL	maintainer="nhwang"

RUN	apt-get -y update && \
	apt-get install -y php7.3 php-fpm php-cli mariadb-client wget php-mysql php-mbstring php-xml vim

COPY	./script /tmp
COPY	./wp_conf /tmp

RUN	chmod 777 /tmp/script.sh
RUN	wget http://wordpress.org/latest.tar.gz && \
	tar -xzvf latest.tar.gz && \
	cd /wordpress && \
	mkdir -p /var/www/html && \
	mv * /var/www/html && \
	cd ../ && \
	mkdir -p /run/php && \
	touch /run/php/php7.3-fpm.pid

EXPOSE	"9000"

WORKDIR	/var/www/html

CMD	["/tmp/script.sh","/usr/sbin/php-fpm7.3", "--nodaemonize"]
