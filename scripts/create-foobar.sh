cd k8s-resources/

# Create Foo
sudo kubectl apply -f foo-app/foo-deployment.yaml -n goodnotes-takehome
sudo kubectl apply -f foo-app/foo-service.yaml -n goodnotes-takehome
sudo kubectl apply -f foo-app/foo-ingress.yaml -n goodnotes-takehome
# Create Bar
sudo kubectl apply -f bar-app/bar-deployment.yaml -n goodnotes-takehome
sudo kubectl apply -f bar-app/bar-service.yaml -n goodnotes-takehome
sudo kubectl apply -f bar-app/bar-ingress.yaml -n goodnotes-takehome

cd ../