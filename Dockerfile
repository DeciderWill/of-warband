FROM ubuntu:14.04
MAINTAINER Outflank Ltd.
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install --no-install-recommends --assume-yes wine -qqy x11-apps
RUN apt-get install --no-install-recommends --assume-yes screen unzip wget
RUN apt-get install --no-install-recommends --assume-yes dos2unix
RUN wget http://s3.amazonaws.com/gameserver-dedicated/mb_warband_dedicated_1158.zip
ENV WARBAND_DIR /opt/warband
COPY scripts $WARBAND_DIR
RUN unzip mb_warband_dedicated_1158.zip
RUN ls
RUN cd Mount*
RUN ls
EXPOSE 7240/udp
RUN dos2unix $WARBAND_DIR/run.sh
ENTRYPOINT bash $WARBAND_DIR/run.sh
