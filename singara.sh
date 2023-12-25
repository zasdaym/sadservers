#!/usr/bin/env bash

cd /home/admin
docker run --name registry --detach --network host registry:2
docker tag webapp 127.0.0.1:5000/webapp/webapp
docker push 127.0.0.1:5000/webapp/webapp
sed -i 's|^image: webapp|image: 127.0.0.1:5000/webapp/webapp|g' deployment.yaml
sed -i 's|8880|8888|g' deployment.yaml
sed -i 's|app.kubernetes.io/name|app|g' nodeport.yaml
kubectl apply -f .
nohup kubectl port-forward -n web deployment/webapp-deployment 8888
curl localhost:8888
