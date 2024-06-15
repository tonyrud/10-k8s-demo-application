init:
	minikube start --driver=docker
	minikube addons enable ingress
	minikube addons enable metrics-server
	minikube addons enable dashboard
	minikube stop

start_cluster:
	minikube start --driver=docker

run_mongo:
	kubectl apply -f mongo-namespace.yaml
	kubectl apply -f mongo-secret.yaml
	kubectl apply -f mongo-configmap.yaml
	kubectl apply -f .
	sleep 1
	minikube service mongo-express-service --namespace mongodb

delete_mongo:
	kubectl delete ns mongodb