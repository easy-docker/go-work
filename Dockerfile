FROM golang:alpine

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN apk add --no-cache git gcc g++ make vim

ADD start.sh /start.sh

RUN chmod +x /start.sh

WORKDIR /go

VOLUME ["/go/src"]

EXPOSE 8080

CMD ["/start.sh"]