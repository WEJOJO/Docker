FROM	debian:buster

LABEL	maintainer="nhwang"

RUN	apt-get -y update && \
	apt-get install -y php7.3 php-fpm php-cli wget php-mysql php-mbstring php-xml sendmail vim
#	wget http://wordpress.org/latest.tar.gz && \
#	tar -xzvf latest.tar.gz

#CMD	["apache2-foreground"]

COPY	./script /tmp
COPY	./wp_conf /tmp

EXPOSE	"9000"

WORKDIR	/var/www/html

ENTRYPOINT	["bash"]

CMD	["/tmp/script.sh", "--nodaemonize"]
