FROM	debian:buster

RUN	apt-get update && \
	apt-get install -y nginx && \
	apt-get install -y openssl
#	openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx-certificate.crt -keyout nginx.key \
#		-subj "/C=UK/ST=test/L=test/O=test/OU=test Department/CN=54.180.5.25"

LABEL	maintainer="nhwang"

COPY	./script /tmp
#COPY	./test_ing /tmp

#CMD ["mkdir","/etc/nginx/certificate","cd","/etc/nginx/certificate","openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx-certificate.crt -keyout nginx.key","KR","T","T","T","T","54.180.5.25","42"]

ENTRYPOINT	["bash"]

CMD	["/tmp/test.sh", "nginx", "-g", "daemon off;"]

