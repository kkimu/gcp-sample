#!/bin/bash
version=0.3.2 # imageのversionを指定
#cd $GOPATH/src/github.com/techcampman/insta-team-4_2
#git pull
GOOS=linux go build -o /Users/a14730/work/instagram/instagram-infra/go-pro/main $GOPATH/src/github.com/techcampman/insta-team-4_2/main.go
docker build -t gcr.io/cyberagent-148/go-app:$version -t gcr.io/cyberagent-148/go-app:latest go-pro
gcloud docker -- push gcr.io/cyberagent-148/go-app:$version
gcloud docker -- push gcr.io/cyberagent-148/go-app:latest
