FROM golang:latest

MAINTAINER zzg

ENV TZ Asia/Shanghai

RUN echo 'Asia/Shanghai' >/etc/timezone

ENV GOPROXY https://goproxy.io/

ENV GO111MODULE on

WORKDIR $GOPATH/src/new_erp_agent_by_go

ADD . .

RUN go mod vendor

EXPOSE 9999

RUN ./main.go