# K8S Demo Deployment

## Start cmds

Get addons

```bash
make init
```

Start minikube

```bash
make start_cluster
```

Start K8S resources

__NOTE: all resources are created in `mongodb` namespace__

```bash
make run_mongo
```

## K8s cmds

__Use `kubens` to change into `mongodb` namespace__

See running pods

```bash
kubectl get pod
```

See services

```bash
kubectl get svc
```

### Dashboard and Ingress

Separate shell

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

Separate shell

```bash
minikube tunnel
```

Edit `/etc/hosts` file and add `127.0.0.1   dashboard.com`

```bash
sudo vim /etc/hosts
```

[Open Dashboard](https://dashboard.com/#/workloads?namespace=mongodb)

## Mosquitto

```bash
make run_mosquitto
```

Inspect configmap and secret files

```bash
k exec -it <pod> -- sh

cat /mosquitto/config/mosquitto.conf
cat /mosquitto/secret/secret.file
```

## Helm

Download cluster config, and change permissions:

```bash
chmod 400 <kubeconfig file>
```

Set config locally

```bash
export KUBECONFIG=<kubeconfig file>
```
