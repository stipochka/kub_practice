#!/bin/bash


minikube start;
kubectl apply -f deployment.yaml;
kubectl apply -f service.yaml;
kubectl get pods;
c=$(minikube service echo-server --url);
curl $c