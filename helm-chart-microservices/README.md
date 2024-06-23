# K8S Microservices

[Using Google's Microservices Demo](https://github.com/GoogleCloudPlatform/microservices-demo)

## Video 21 - Using single config.yaml

```bash
make run_microservices
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