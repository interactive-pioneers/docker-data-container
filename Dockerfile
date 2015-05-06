FROM busybox

MAINTAINER Ain Tohvri <at@interactive-pioneers.de>

ENV DATA_HOME /data
ENV USERNAME deploy
ENV GROUPNAME deploy
ENV UID 1000
ENV GID 1000

RUN deluser default
RUN addgroup -g $GID $GROUPNAME
RUN adduser -h $DATA_HOME -D -g '' -u $UID -G $GROUPNAME $USERNAME

USER $USERNAME
WORKDIR $DATA_HOME