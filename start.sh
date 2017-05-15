#!/bin/bash
set -x

kc create secret generic cloudsql --from-literal=username=yonstagram --from-literal=password=
kc create secret generic cloudsql-oauth-credentials --from-file=credentials.json=$PWD/credential/cyberagent-148-b47cb71bd8c5.json

kubectl delete -f go-app-deployment.yml
kubectl delete -f go-app-service.yml

kubectl create -f go-app-deployment.yml
kubectl create -f go-app-service.yml
