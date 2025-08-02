cd k8s-resources/

sudo kubectl create namespace argocd 
sudo kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml 
sleep 15 
# Create basic configuration
sudo kubectl apply -n argocd -f argocd/goodnotes-takehome-repo.yaml 
sudo kubectl apply -n argocd -f argocd/goodnotes-takehome-project.yaml 
sudo kubectl apply -n argocd -f argocd/foo-application.yaml 
sudo kubectl apply -n argocd -f argocd/bar-application.yaml 
sleep 30 
# Get ArgoCD initial password
sudo kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo 
# Get Kind IP Address
sudo docker container inspect leleo-cluster-control-plane --format '{{ .NetworkSettings.Networks.kind.IPAddress }}' 
sudo kubectl port-forward -n argocd service/argocd-server 8443:443

cd ../