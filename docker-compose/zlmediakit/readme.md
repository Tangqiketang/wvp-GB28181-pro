1. 先不要映射文件启动
2. cd /opt/docker-compose/zlmediakit
4. docker cp  zlmediakit:/opt/media/bin   ./bin
5. 把default.pem替换掉。使得nginx中的zlmediakit中用同一个证书。
6. 推流拉流webrtc，使用https://ip:6080/webrtc页面

国标语音对接: 1首先前端-》我方后端（或nginx直接代理）-》wvp接口获取设备列表
            2.前端根据wvp前端调用参数-》我方后端（或nginx直接代理）->wvp接口获取播放url
直播和回放: 1.直播，后端直接调用系统底层FFmpeg（或调用zl推送接口）推送到zlmediakit
          2.前端根据固定url+参数获取 （webrtc页面调试）
         
