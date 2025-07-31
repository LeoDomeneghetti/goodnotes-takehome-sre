cd kind-setup/

# Create Cluster
sudo kind delete cluster --name goodnotes-multi-node
sudo kind create cluster --name goodnotes-multi-node --config cluster-config.yaml --wait 30s
# Create Namespace
sudo kubectl create namespace goodnotes-takehome

cd ../