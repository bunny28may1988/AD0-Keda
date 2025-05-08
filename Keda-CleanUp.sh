#!/bin/bash

echo "Cleaning up existing KEDA setup..."

kubectl delete scaledobject ado-agent-scaledobject -n ado-agent --ignore-not-found
kubectl delete triggerauthentication ado-auth -n ado-agent --ignore-not-found
kubectl delete secret ado-auth-secret -n ado-agent --ignore-not-found
helm uninstall keda -n keda --ignore-not-found
kubectl delete namespace keda --ignore-not-found

echo "KEDA cleanup completed."
