#!/bin/bash
version=0.4.2 # imageのversionを指定

kubectl set image deployment/go-app-deployment go-app=gcr.io/cyberagent-148/go-app:$version
