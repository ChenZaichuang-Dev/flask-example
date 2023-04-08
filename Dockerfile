FROM ubuntu:bionic
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install curl screen

ARG USER=root
USER $USER

WORKDIR /app

COPY start.sh start.sh

RUN chmod +x /app/start.sh
ENTRYPOINT ["./start.sh"]
