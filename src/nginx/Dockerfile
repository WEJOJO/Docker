FROM	debian:buster

RUN	apt-get update && \
	apt-get install -y nginx && \
	apt-get install -y openssl

LABEL	maintainer="nhwang"

COPY	./script /tmp

CMD	["/tmp/script.sh", "nginx", "-g", "daemon off;"]

