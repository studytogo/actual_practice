#!/bin/bash

git pull

ADD . .

RUN go mod vendor

go build main.go

./main