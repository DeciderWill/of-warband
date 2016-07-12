FROM ubuntu:14.04
MAINTAINER Outflank Ltd.
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install --no-install-recommends --assume-yes wine
RUN apt-get install --no-install-recommends --assume-yes screen
RUN apt-get install --no-install-recommends --assume-yes unzip
RUN apt-get install --no-install-recommends --assume-yes wget
RUN wget http://s3.amazonaws.com/gameserver-dedicated/mb_warband_dedicated_1158.zip
ENV WARBAND_DIR /opt/warband
COPY scripts $WARBAND_DIR
RUN unzip mb_warband_dedicated_1158.zip
RUN ls
RUN cd Mount*
RUN ls
EXPOSE 7240/udp
ENTRYPOINT bash $WARBAND_DIR/run.sh






