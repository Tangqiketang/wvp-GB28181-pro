#!/bin/bash
openssl genrsa -out server.key 2048 &&
subj="/C=CN/ST=Beijing/L=Beijing/O=Me/OU=Me/CN=me.org" &&
openssl req -new -x509 -key server.key -out server.crt -days 3650 -subj $subj;
##合成一个,用于映射替换流媒体服务器内部default.pem
cat server.crt server.key > ./ssl.pem