FROM busybox

MAINTAINER Ain Tohvri <at@interactive-pioneers.de>

ENV DATA_HOME /data

USER root

RUN mkdir -p $DATA_HOME
RUN chmod -R 0777 $DATA_HOME

WORKDIR $DATA_HOME