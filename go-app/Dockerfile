FROM alpine:3.5

RUN apk add --no-cache --update ca-certificates
ADD https://github.com/golang/go/raw/master/lib/time/zoneinfo.zip /usr/local/go/lib/time/zoneinfo.zip

COPY main .
CMD ["./main"]
