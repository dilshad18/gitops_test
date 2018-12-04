#!/bin/bash

kubectl get pods -n kube-system
kubectl -n kube-system create sa tiller
kubectl create clusterrolebinding tiller-cluster-rule     --clusterrole=cluster-admin     --serviceaccount=kube-system:tiller
helm init --skip-refresh --upgrade --service-account tiller

