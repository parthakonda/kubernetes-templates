#!/bin/bash
NAMESPACE=$1
echo "Deleting everything in $NAMESPACE"
kubectl delete -f app-admin-api/kubernetes -n $NAMESPACE
kubectl delete -f app-admin-frontend/kubernetes -n $NAMESPACE
kubectl delete -f app-user-api/kubernetes -n $NAMESPACE
kubectl delete -f app-user-frontend/kubernetes -n $NAMESPACE
kubectl delete -f postgres/ -n $NAMESPACE
kubectl delete -f base/ingress.yml -n $NAMESPACE

