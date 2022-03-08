#!/bin/bash

docker run -v $(pwd):/work -w /work alpine sh -c "
    apk add git
    git clone --depth 1 https://github.com/prometheus-operator/kube-prometheus.git -b release-0.10 /tmp/
    cp -R /tmp/manifests ."

sudo chown -R "$(id -u):$(id -g)" manifests

# rm manifests/grafana-deployment.yaml

kubectl create -f manifests/setup

kubectl create -f manifests

# kubectl apply -f prometheus.yaml -f service-monitor.yaml

# kubectl apply -f dashboard/hornet-insight.yaml -f dashboard/hornet-overview.yaml 

# kubectl apply -f dashboard/grafana-deployment.yaml -n monitoring
