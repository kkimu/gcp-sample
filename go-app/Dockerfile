FROM alpine:3.5

ADD https://github.com/golang/go/raw/master/lib/time/zoneinfo.zip /usr/local/go/lib/time/zoneinfo.zip
RUN apk add --no-cache --update ca-certificates

COPY main .
CMD ["./main"]
