```sh

# Kubectl commands
kubectl get nodes
kubectl get pods
kubectl get pods --all-namespaces
kubectl get services
kubectl delete pod <podname>
kubectl delete service <servicename>
kubectl create -f pod.yml service.yml
docker ps


[deployment.yml]
apiVersion: apps/v1
kind: Deployment
metadata:
  name: httpd-deployment
  labels:
    app: httpd
spec:
  replicas: 3
  selector:
    matchLabels:
      app: httpd
  template:
    metadata:
      labels:
        app: httpd
    spec:
      containers:
      - name: httpd
        image: httpd:latest
        ports:
        - containerPort: 80

[service.yml]
kind: Service
apiVersion: v1
metadata:
  name: service-deployment
spec:
  selector:
    app: httpd
  ports:
  - protocol: TCP
    port: 80
    targetPort: 80
  type: NodePort
