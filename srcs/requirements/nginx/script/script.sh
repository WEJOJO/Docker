#!/bin/bash

mkdir /etc/nginx/certificate
cd /etc/nginx/certificate
openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx-certificate.crt -keyout nginx.key \
	-subj "/C=KR/ST=test_state/L=test_loc/O=test_org/OU=IT Department/CN=54.180.5.25"

exec "$@"
