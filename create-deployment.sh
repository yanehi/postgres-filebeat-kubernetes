#!/bin/env bash
kubectl create -f filebeat-logshipper.yml -n elastic-stack
sleep 10
kubectl create -f postgres-deployment.yml -n elastic-stack