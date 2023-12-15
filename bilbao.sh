#!/usr/bin/env bash

kubectl apply -f manifest.yaml
kubectl describe pods
sed -i '/nodeSelector/d' manifest.yaml
sed -i '/diskType: ssd/d' manifest.yaml
kubectl apply -f manifest.yaml
kubectl describe pods
sed -i 's/2000Mi/200Mi/g' manifest.yaml
kubectl apply -f manifest.yaml
