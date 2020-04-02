#!/bin/env bash
kubectl delete deployment postgres -n elastic-stack
sleep 5
kubectl delete sa filebeat-service-account -n elastic-stack
kubectl delete clusterroles filebeat-cluster-role
kubectl delete clusterrolebinding filebeat-cluster-role-binding
kubectl delete pvc pg-log -n elastic-stack
kubectl delete configmaps filebeat-config -n elastic-stack