cd kind-setup/

# Create Cluster
sudo kind delete cluster --name goodnotes-multi-node
sudo kind create cluster --name goodnotes-multi-node --config cluster-config.yaml --wait 30s
# Create Namespace
sudo kubectl create namespace goodnotes-takehome

sudo kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/refs/heads/main/deploy/static/provider/kind/deploy.yaml
sudo kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=120s

sudo docker container inspect goodnotes-multi-node-control-plane --format '{{ .NetworkSettings.Networks.kind.IPAddress }}' && \

cd ../