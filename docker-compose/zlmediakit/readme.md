1. 先不要映射文件启动
2. cd /opt/docker-compose/zlmediakit
4. docker cp  zlmediakit:/opt/media/bin   ./bin
5. 把default.pem替换掉。使得nginx中的zlmediakit中用同一个证书。
6. 推流拉流webrtc，使用https://ip:6080/webrtc页面
