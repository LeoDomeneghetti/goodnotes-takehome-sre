cd foobar-apps/

sudo docker image build -t leodomeneghetti/foo-app:$1 foo-app
sudo docker image tag leodomeneghetti/foo-app:$1 leodomeneghetti/foo-app:$1
sudo docker image push leodomeneghetti/foo-app:$1
sed -i '/image:/s/foo-app:.*/foo-app:'"$1"'/g' ../k8s-resources/foo-app/foo-deployment.yaml

sudo docker image build -t leodomeneghetti/bar-app:$1 bar-app
sudo docker image tag leodomeneghetti/bar-app:$1 leodomeneghetti/bar-app:$1
sudo docker image push leodomeneghetti/bar-app:$1
sed -i '/image:/s/bar-app:.*/bar-app:'"$1"'/g' ../k8s-resources/bar-app/bar-deployment.yaml

cd ../

