# K8S Demo Deployment

## Apply cmds

### Secrets and ConfigMap

Must be created before the deployment!

```bash
kubectl apply -f mongo-secret.yaml
kubectl apply -f mongo-configmap.yaml
kubectl apply -f mongo-namespace.yaml
```

### Deployments

```bash
kubectl apply -f mongo-deployment.yaml
```

See running pods

```bash
kubectl get pod
```

See services

```bash
kubectl get svc
```

### Services

```bash
minikube service mongo-express-service
```
