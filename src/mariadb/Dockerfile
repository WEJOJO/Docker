FROM	debian:buster

LABEL	maintainer="nhwang"

COPY	./script /tmp

EXPOSE	"3306"

RUN	apt-get update -y && \
	apt-get install -y mariadb-server && \
	service mysql start
	
#	cd /usr/sbin && \
#	mysqld

##
ENTRYPOINT	["/tmp/script.sh"]
##
CMD	["mysqld"]


