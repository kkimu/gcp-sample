#!/bin/bash
kubectl delete -f go-app-deployment.yml
kubectl delete -f go-app-service.yml
gcloud container clusters delete yonstagram
