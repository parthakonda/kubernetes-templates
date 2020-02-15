#!/bin/bash
NAMESPACE=$1
echo "Creating everything in $NAMESPACE"
kubectl apply -f postgres/ -n $NAMESPACE
kubectl apply -f app-admin-api/kubernetes -n $NAMESPACE
kubectl apply -f app-admin-frontend/kubernetes -n $NAMESPACE
kubectl apply -f app-user-api/kubernetes -n $NAMESPACE
kubectl apply -f app-user-frontend/kubernetes -n $NAMESPACE
echo "Adding admin to ingress of $NAMESPACE namespace"
kubectl apply -f base/ingress.yml -n $NAMESPACE
