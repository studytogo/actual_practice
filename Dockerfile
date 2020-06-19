FROM golang:latest

MAINTAINER zzg

ENV TZ Asia/Shanghai

RUN echo 'Asia/Shanghai' >/etc/timezone

ENV GOPROXY https://goproxy.io/

ENV GO111MODULE on

WORKDIR $GOPATH/src/actual_practice

ADD . .

EXPOSE 9999

RUN chmod 777 perform.sh

CMD ./perform.sh