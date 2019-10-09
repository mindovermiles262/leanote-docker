FROM golang:buster
MAINTAINER Andy Duss <mindovermiles262@gmail.com>

EXPOSE 8080
RUN apt-get update && apt-get install -y apt-utils wget unzip && \
    go get github.com/revel/revel && \
    go get github.com/revel/cmd/revel && \
    go get -u github.com/golang/dep/cmd/dep

ADD conf /docker
RUN wget -q https://github.com/leanote/leanote/archive/master.zip && \
    mkdir -p /go/src/github.com/leanote && \
    unzip -q -d /go/src/github.com/leanote/ master.zip && \
    mv /go/src/github.com/leanote/leanote-* /go/src/github.com/leanote/leanote && \
    cp /docker/app.conf /go/src/github.com/leanote/leanote/conf/app.conf

CMD ["revel", "run", "github.com/leanote/leanote"]

