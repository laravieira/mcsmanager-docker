FROM node:20 as build
WORKDIR /app
RUN wget https://github.com/MCSManager/MCSManager/releases/latest/download/mcsmanager_linux_release.tar.gz
RUN tar -kzxf mcsmanager_linux_release.tar.gz
RUN ls
RUN mv -v ./mcsmanager/* /app
RUN chmod +x /app/start-web.sh

EXPOSE 23333:23333
ENTRYPOINT ["/app/start-web.sh"]
