# K8S Microservices

[Using Google's Microservices Demo](https://github.com/GoogleCloudPlatform/microservices-demo)

## Video 21 - Using single config.yaml

From this dir:

```bash
make -f ../Makefile run_microservices
```

```bash
make -f ../Makefile delete_microservices
```

## Video 22 - Production Best Practices

- Always use pinned versions
- Use `livenessProve` and `readinessProbe` probes
  - livenessProbe - continuously checks application is running via healthcheck endpoints
  - readinessProbe - confirms the application is ready to receive traffic
- Add resource requests and limits
  - requests for how much resouces the pod is needing
  - limits to keep the pod from using more than specified
- Use LoadBalancers for single entry points into cluster
- Always configure more than 1 pod replica
- Always have more than 1 node
- Labels for all resources
- Ensure images are checked for vulnerabilites

## Video 23/24 - Using Helm

```bash
helm create microservice
```

### Linting and testing output

```bash
helm template -f values/ad-service-values.yaml ./charts/microservice
```

```bash
helm lint -f values/ad-service-values.yaml ./charts/microservice
```

### Deploying via sh script

```bash
chmod u+x install.sh
```

Manually added services in sh file

```bash
sh install.sh
```

Remove resources

```bash
sh uninstall.sh
```

### Deploying via helmfile

```bash
brew install helmfile
```

```bash
helm sync
```

```bash
helm destroy
```
