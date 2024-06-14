# K8S Demo Deployment

## Minikube

Get addons

```bash
make init
```

Start minikube

```bash
make start_cluster
```

## K8s cmds

Start all deployments

```bash
make run_mongo
```

See running pods

```bash
kubectl get pod
```

See services

```bash
kubectl get svc
```

### Dashboard and Ingress

```bash
minikube dashboard
```

Inspect pods, services, deployments...

```bash
kubectl get all -n kubernetes-dashboard
```

Inspect ingress

```bash
kubectl get ingress -n kubernetes-dashboard
```

```bash
kubectl describe ingress dashboard-ingress -n kubernetes-dashboard
```

```bash
minikube tunnel
```

Edit `/etc/hosts` file and add `127.0.0.1   dashboard.com`

```bash
sudo vim /etc/hosts
```
