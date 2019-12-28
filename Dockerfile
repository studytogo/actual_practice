FROM golang:latest

MAINTAINER zzg

ENV TZ Asia/Shanghai && GOPROXY https://goproxy.io/ && GO111MODULE on

RUN echo 'Asia/Shanghai' >/etc/timezone

#ENV GOPROXY https://goproxy.io/

#ENV GO111MODULE on

WORKDIR $GOPATH/src/actual_practice

ADD . .

RUN go mod vendor

EXPOSE 9999

RUN chmod 777 main.go

RUN ./main.go