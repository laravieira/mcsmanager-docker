FROM node:20
WORKDIR /app

RUN wget https://github.com/MCSManager/MCSManager/releases/latest/download/mcsmanager_linux_release.tar.gz
RUN tar -zxf mcsmanager_linux_release.tar.gz
RUN chmod +x /app/start-web.sh

EXPOSE 23333:23333
ENTRYPOINT ["/app/start-web.sh"]
