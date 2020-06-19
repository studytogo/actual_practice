FROM golang:latest

MAINTAINER zzg

ENV TZ Asia/Shanghai && GOPROXY https://goproxy.io/ && GO111MODULE on

RUN echo 'Asia/Shanghai' >/etc/timezone

WORKDIR $GOPATH/src/actual_practice

ADD . .

EXPOSE 9999

RUN chmod 777 perform.sh

CMD ./perform.sh