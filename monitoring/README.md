# README

## Install Prometheus/Grafana stack

[Resource](https://computingforgeeks.com/setup-prometheus-and-grafana-on-kubernetes/)

```bash
./setup.sh
```

## Expose prometheus, grafana, alert manager

```bash
kubectl --namespace monitoring port-forward svc/grafana 3000

kubectl --namespace monitoring port-forward svc/prometheus-k8s 9090

kubectl --namespace monitoring port-forward svc/alertmanager-main 9093
```

