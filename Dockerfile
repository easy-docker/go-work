FROM golang:alpine

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN apk add --no-cache git gcc g++ make vim curl mysql-client memcached

ADD start.sh /start.sh

RUN chmod +x /start.sh

WORKDIR /go
RUN curl https://glide.sh/get | sh \
    && go get github.com/astaxie/beego \
    && go get github.com/beego/bee \
    && go get github.com/go-sql-driver/mysql \
    && go get -u gopkg.in/mgo.v2 \
    && go get -u github.com/dgrijalva/jwt-go

VOLUME ["/go/svn"]

EXPOSE 8080

CMD ["/start.sh"]