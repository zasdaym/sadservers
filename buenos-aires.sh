#!/usr/bin/env bash

sudo kubectl logs -l app=logshipper
sudo kubectl patch clusterrole logshipper-cluster-role --type json --patch '[{"op": "add", "path": "/rules/0/verbs/-", "value": "get"}]'
sudo kubectl rollout restart deployment logshipper
