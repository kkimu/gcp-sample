#!/bin/bash
set -ex
version=0.4.2 # imageのversionを指定
path=$PWD
cd $GOPATH/src/github.com/techcampman/insta-team-4_2
git pull
cd $path
GOOS=linux go build -o /Users/a14730/work/instagram/instagram-infra/go-app/main $GOPATH/src/github.com/techcampman/insta-team-4_2/main.go
docker build -t gcr.io/cyberagent-148/go-app:$version -t gcr.io/cyberagent-148/go-app:latest go-app
gcloud docker -- push gcr.io/cyberagent-148/go-app:$version
gcloud docker -- push gcr.io/cyberagent-148/go-app:latest
