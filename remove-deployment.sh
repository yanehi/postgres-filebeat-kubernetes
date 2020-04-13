#!/bin/env bash
#
#
set -x

echo "Delete all components of PostgreSQL container with Filebeat sidecar"

kubectl delete deployment postgres -n elk-stack
kubectl delete sa filebeat-service-account -n elk-stack
kubectl delete clusterroles filebeat-cluster-role
kubectl delete clusterrolebinding filebeat-cluster-role-binding
kubectl delete pvc pg-log -n elk-stack
kubectl delete configmaps filebeat-config -n elk-stack