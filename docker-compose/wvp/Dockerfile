FROM davidcaste/alpine-java-unlimited-jce:jre8
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN mkdir -p /opt/logs/  \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo "Asia/Shanghai" > /etc/timezone \
&&rm -rf /var/cache/apk/* /tmp/* /var/tmp/* $HOME/.cache
ENV TZ=Asia/Shanghai

#VOLUME
ADD wvp-pro.jar   /app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
CMD ["--spring.profiles.active=release"]
