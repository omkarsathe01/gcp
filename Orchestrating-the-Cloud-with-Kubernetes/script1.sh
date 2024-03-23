gcloud config set compute/zone Zone
gcloud container clusters create io
gsutil cp -r gs://spls/gsp021/* .
cd orchestrate-with-kubernetes/kubernetes
kubectl create deployment nginx --image=nginx:1.10.0
sleep 15
kubectl get pods
kubectl expose deployment nginx --port 80 --type LoadBalancer
sleep 15
kubectl get services
cd ~/orchestrate-with-kubernetes/kubernetes
kubectl create -f pods/monolith.yaml
sleep 15
kubectl get pods
kubectl describe pods monolith
echo Done!