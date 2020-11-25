#!/bin/sh 

kubectl create namespace ingress-internal
kubectl create namespace ingress-external

#installing Internal Ingress
helm upgrade --install ingress-internal ingress-nginx-internal -f ingress-config-internal.yaml -n ingress-internal

#Installing External Ingress
helm upgrade --install ingress-external ingress-nginx-external -n ingress-external


