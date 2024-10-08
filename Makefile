init:
	minikube start --driver=docker
	minikube addons enable ingress
	minikube addons enable metrics-server
	minikube addons enable dashboard
	minikube stop

start_cluster:
	minikube start --driver=docker

stop_cluster:
	minikube stop

run_mongo:
	kubectl apply -f ./mongodb/mongo-namespace.yaml
	kubectl apply -f ./mongodb/mongo-secret.yaml
	kubectl apply -f ./mongodb/mongo-configmap.yaml
	kubectl apply -f ./mongodb
	sleep 5
	minikube service mongo-express-service --namespace mongodb

run_mosquitto:
	kubectl apply -f ./mosquitto/config-file.yaml
	kubectl apply -f ./mosquitto/secret-file.yaml
	kubectl apply -f ./mosquitto/mosquitto.yaml

delete_mongo:
	kubectl delete ns mongodb

delete_mosquitto:
	kubectl delete -f ./mosquitto/config-file.yaml
	kubectl delete -f ./mosquitto/secret-file.yaml
	kubectl delete -f ./mosquitto/mosquitto.yaml

run_microservices:
	kubectl create ns microservices
	kubectl apply -f ./helm-chart-microservices/config.yaml --namespace microservices
	
delete_microservices:
	kubectl delete ns microservices