#!/bin/env bash
#
#
set -x

kubectl create namespace elastic-stack
echo "Create configmap for Filebeat container"
kubectl create -f manifests/configmap.yml -n elastic-stack
echo "Serviceaccount for deployment. Read information of pods and namespaces"
kubectl create -f manifests/serviceaccount.yml -n elastic-stack
echo "Clusterroles for RBAC"
kubectl create -f manifests/clusterroles.yml  
echo "Clusterrolebindings for RBAC"
kubectl create -f manifests/clusterrolebindings.yml -n elastic-stack
echo "Persistent volume claim for PostgreSQL logs"
kubectl create -f manifests/pvc.yml -n elastic-stack
echo "Create Deployment with PostgreSQL container and Filebeat Sidecar"
kubectl create -f manifests/deployment.yml -n elastic-stack