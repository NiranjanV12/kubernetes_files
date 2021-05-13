sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg     lsb-release
echo   "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

sudo systemctl enable docker
sudo systemctl daemon-reload
sudo systemctl restart docker
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
br_netfilter
EOF

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sudo sysctl --system
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
swapoff -a
sudo kubeadm init --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubtctl get nodes
kubectl get nodes
kubectl get all --all-namespaces
kubectl create -f https://docs.projectcalico.org/manifests/tigera-operator.yaml
kubectl create -f https://docs.projectcalico.org/manifests/custom-resources.yaml
watch kubectl get pods -n calico-system
kubectl get all --all-namespaces
kubectl get nodes
kubectl label nodes slave-node kubernetes.io/role=batman
kubectl label nodes vm2 kubernetes.io/role=batman
kubectl get nodes
kubectl label nodes vm2 kubernetes.io/role=Batman
kubectl label nodes vm2 kubernetes.io/role=Batman --overwrite true
kubectl get nodes
exit
service
service --status-all
kubeadm
kubectl get nodes
swapoff -a
kubectl get nodes
docker run niranjanv64/ms-user-static
sudo docker run niranjanv64/ms-user-static
sudo docker run -itd -p 8080:8080 niranjanv64/ms-user-static org.sj.msuserstatic.MsUserStaticApplication
docker ps 
sudo docker ps 
exit
sudo docker ps 
docker stop zen_hopper
sudo docker stop zen_hopper
sudo docker start zen_hopper
exit
docker ps
sudo docker ps -a
docker rm stupefied_antonelli
sudo docker rm stupefied_antonelli
sudo docker ps -a
docker start zen_hopper
sudo docker start zen_hopper
kubectl get pods
kubectl get all
kubectl get nodes
kubectl run mypod --image niranjanv64/ms-user-static --dry-run -o yaml > mypod.yaml
ls
cat mypod.yaml 
kubectl create -f mypod.yml
kubectl create -f mypod.yaml
kubectl get nodes
kubectl get pods
kubectl describe mypod
kubectl get pods
kubectl describe mypod
kubectl get pods/mypod
kubectl get all -A
kubectl describe pod/mypod
kubectl get nodes
kubectl get all -A
kubectl describe pod/mypod
kubectl exec -it pod/mypod
kubectl exec -it pod/mypod sh
kubectl describe pod/mypod
kubectl exec -it pod/mypod sh
kubectl describe pod/mypod
kubectl exec -it pod/mypod sh
kubectl logs pods/mypod
kubectl log pods/mypod
kubectl logs pods/mypod
clear
kubectl logs pods/mypod
exit
ls
cat mypod.yaml 
vi mypod.yaml 
kubectl create -f mypod.yaml
kubectl apply -f mypod.yaml
kubectl hget nodes
kubectl get nodes
kubectl hget nodes
kubectl get nodes
kubectl apply -f mypod.yaml
kubectl get pods
kubectl get defau;t
kubectl get default
kubectl get all -A
kubectl apply -f mypod.yaml
kubectl get all -A
kubectl describe pod/mypod
kubectl logs pod/mypod
kubectl get all -A
curl http://10.96.0.1/ms-user-static/getUser
kubectl create deployment mydeploy --image niranjanv64/ms-user-static --dry-run -o yaml > mydeploy.yaml
ls
cat mydeploy.yaml 
exit
kubectl get all -A
kubectl describe pod/mypod
curl http://192.168.185.200/ms-user-static/getUser
curl http://10.96.229.61/ms-user-static/getUser
exit
curl http://192.168.185.200:8080/ms-user-static/getUser
kubectl get all -A -o -wide
kubectl get all -o -wide
kubectl get nodes -o -wide
kubectl get all -A
kubectl describe pod/mypod
kubectl get nodes -o -wide
kubectl get pods -n default
kubectl get pods -n default -o -wide
kubectl get pods -n default  -wide
kubectl get pods
kubectl get pods -o wide
kubectl delete pod mypod
kubectl get pods -o wide
ls
cat mypod.yaml 
ci mydeploy.yaml 
vi  mydeploy.yaml 
cat mypod.yaml 
cat mydeploy.yaml 
kubectl create -f mydeploy.yaml 
ls
kubectl get nodes
kubectl get pods
kubectl get pods -o wide
kubectl get pods
kubectl get pods -o wide
kubectl get pods
kubectl get pods -o wide
cat mydeploy.yaml 
kubectl scale deployment --replicas=3 mydeploy
kubectl get pods -o wide
curl http://192.168.185.200:8080/ms-user-static/getUser
curl http://192.168.185.201:8080/ms-user-static/getUser
kubectl expose deployments mydeploy --type NodePort --name expose_service
kubectl expose deployments mydeploy --type NodePort --name exposeService
kubectl expose deployments mydeploy --type NodePort --name my-service
kubectl get deployments -o wide
kubectl get pods -o wide
kubectl get service -o wide
curl http://192.168.185.201:8080/ms-user-static/getUser
curl http://p://10.100.58.170:8080/ms-user-static/getUser
curl http://192.168.185.201:8080/ms-user-static/getUser
exit
curl http://192.168.185.201:8080/ms-user-static/getUser
curl http://10.100.58.170:8080/ms-user-static/getUser
curl http://192.168.185.201:8080/ms-user-static/getUser
curl http://10.100.58.170:8080/ms-user-static/getUser
history
cat mypod.yaml 
curl http://10.100.58.170:8080/ms-user-static/getUser
kubectl get service -o widxe
kubectl get service -o wide
exit
kubeadm version
kubernetes version
kubectl get nodes
kubectl get pods -o wide
kubectl get logs mydeploy-866595c864-b8vjh
kubectl logs mydeploy-866595c864-b8vjh
kubectl get pods -o wide
kubectl get service -o wide
curl http://10.100.58.170:8080/ms-user-static/getUser
curl http://10.100.58.170:32100/ms-user-static/getUser
kubectl get service -o wide
kubectl describe my-service
kubectl describe service my-service
exit
clear
kubectl describe service my-service
kubectl logs service my-service
kubectl logs  my-service
kubectl logs service my-service
kubectl get events
kubectl get cs
get http://127.0.0.1:10252/healthz
wget http://127.0.0.1:10252/healthz
kubectl get po -n kube-system
kubectl get cs
kubectl get componentstatuses -o yaml.
kubectl get componentstatuses -o yaml
kubectl scale deployment --replicas=2 mydeploy
kubectl get pods -o wide
kubectl get componentstatuses -o yaml
kubectl scale deployment --replicas=4 mydeploy
kubectl get pods -o wide
kubectl scale deployment --replicas=3 mydeploy
kubectl get pods -o wide
kubestl get nodes
kubectl get nodes
ls
kubectl scale deployment --replicas=2 mydeploy
cat mydeploy.yaml 
exit
kubectl get nodes
kubectl get componentstatuses -o yaml
ls
helm
kubectl get nodes
kubectl get pods -o wide
kubeadm token create --print-join-command
kubectl get nodes
kubectl logs vm3
kubectl get nodes
kubectl scale deployment --replicas=1 mydeploy
kubectl get pods
kubectl scale deployment --replicas=3 mydeploy
kubectl get pods
kubectl get pods -o wide
clear
kubectl get pods -o wide
kubectl scale deployment --replicas=1 mydeploy
kubectl get pods -o wide
kubectl get nodes
kubectl get pods -o wide
kubectl describe mydeploy-866595c864-tpwmg
kubectl describe pod mydeploy-866595c864-tpwmg
kubectl describe node vm3
kubectl get pods -o wide
kubectl get nodes
kubectl get pods -o wide
exzit
exit
apiVersion: v1
kind: ConfigMap
metadata:
data:
vi my-config-map.yaml
ls
vi mydeploy.yaml 
vi my-config-map.yaml
kubectl apply -f mydeploy.yaml 
vi mydeploy.yaml 
kubectl apply -f mydeploy.yaml 
vi mydeploy.yaml 
vi my-config-map.yaml
mv my-config-map.yaml my-config-map-mse.yaml 
kubectl apply -f mydeploy.yaml 
kubectl get nodes
kubectl get deployments
kubectl get nodes
kubectl get deployments
kubectl get pods
kubectl logs mydeploy-7b8558677c-p2swl
kubectl get pods
kubectl logs mydeploy-7b8558677c-p2swl
kubectl logs mydeploy-bc946dd5-4tcjh
kubectl logs mydeploy-7b8558677c-p2swl
kubectl get pods
kubectl logs
kubectl describe mydeploy-7b8558677c-p2swl
kubectl get pods
kubectl describe pod mydeploy-7b8558677c-p2swl
kubectl get cm -A
kubectl create configmap my-config-map-mse my-config-map-mse.yaml
kubectl create configmap -h
kubectl create configmap my-config-map-mse --from-file=my-config-map-mse.yaml
kubectl describe pod mydeploy-7b8558677c-p2swl
kubectl get pods
history
exit
ls
cp mydeploy.yaml mydeploy-mse.yaml 
vi mydeploy
vi mydeploy.yaml 
ls
kubectl get pods
kubectl get modes
kubectl get nodes
vi mydeploy-mse.yaml 
kubectl get nodes
kubectl apply -f mydeploy.yaml
vi mydeploy-mse.yaml 
vi my-config-map-mse.yaml 
kubectl get nodes
kubectl get pods
kubectl get deployments
kubectl delete deployment mydeploy
kubectl get deployments
kubectl apply -f mydeploy-mse.yaml
kubectl get deployments
kubectl get pods
kubectl get service -o wide
kubectl expose deployments mydeploy --type NodePort --name my-service
kubectl expose deployments mydeploy-mse --type NodePort --name my-service-mse
kubectl get service -o wide
cat my-config-map-mse.yaml 
exit
clear
vi my-config-map-mse.yaml 
ls
kubectl apply -f deploy-mse.yml
kubectl apply -f mydeploy-mse.yml
kubectl apply -f mydeploy-mse.yaml 
echo 'source <(kubectl completion bash)' >>~/.bashrc
kubectl completion bash >/etc/bash_completion.d/kubectl
sudo kubectl completion bash >/etc/bash_completion.d/kubectl
sudo -i
kubectl get nodes
sudo -i
kubectl get nodes
kubectl get pods
kubectl describe pod mydeploy-mse-5b9968b845-mqfkd
kubectl apply -f mydeploy.yml
ls
kubectl apply -f mydeploy.yaml
kubectl get pods
kubectl get service -o wide
vi my-config-map-mse.yaml 
kubectl apply -f mydeploy-mse.yaml
kubectl get pods
kubectl get service -o wide
kubectl get pods
kubectl describe configmaps my-config-map-mse
kubectl create configmap my-config-map-mse --from-file=my-config-map-mse.yaml
kubectl apply configmap my-config-map-mse --from-file=my-config-map-mse.yaml
kubectl apply -f my-config-map-mse.yaml 
kubectl apply -f mydeploy-mse.yaml
kubectl get pods
kubectl describe configmaps my-config-map-mse
kubectl delete configmap my-config-map-mse
kubectl create configmap my-config-map-mse --from-file=my-config-map-mse.yaml
kubectl describe configmaps my-config-map-mse
kubectl delete configmap my-config-map-mse
vi my-config-map-mse.yaml 
vi mydeploy-mse.yaml 
kubectl get pods
vi mydeploy-mse.yaml 
kubectl apply -f mydeploy-mse.yaml 
kubectl get pods
kubectl describe pod mydeploy-mse-585bfbfbc9-zs7f8
kubectl create configmap my-config-map-mse --from-file=my-config-map-mse.yaml
kubectl describe pod mydeploy-mse-585bfbfbc9-zs7f8
kubectl get pods
kubectl -it mydeploy-mse-585bfbfbc9-zs7f8 sh
kubectl-exec -it mydeploy-mse-585bfbfbc9-zs7f8 sh
kubectl exec -it mydeploy-mse-585bfbfbc9-zs7f8 sh
vi mydeploy-mse.yaml 
cp mydeploy-mse.yaml mydeploy-mse.yaml_backup
vi mydeploy-mse.yaml
kubectl apply -f mydeploy-mse.yaml 
vi mydeploy-mse.yaml
cat mydeploy-mse.yaml
kubectl create configmap my-config-map-mse --from-file=my-config-map-mse.yaml
cat mydeploy-mse.yaml
vi mydeploy-mse.yaml
kubectl delete configmap my-config-map-mse
kubectl create configmap my-config-map-mse --from-file=my-config-map-mse.yaml
kubectl apply -f mydeploy-mse.yaml 
vi mydeploy-mse.yaml
kubectl apply -f mydeploy-mse.yaml 
kubectl get pods
kubectl exec -it mydeploy-mse-57cb59799-ldvf4 sh
exit
kubectl get pods
kubectl get nodes
kubectl get pods
kubectl get svc
kubectl describe pod mydeploy-866595c864-26n8t
kubectl get svc
kubectl get service
kubectl get services
kubectl get sdep
kubectl get dep
kubectl get deploy
kubectl get deployments
vi my-config-map-mse.yaml 
kubectl get deployments
vi my-config-map-mse.yaml 
vi mydeploy-mse.yaml
kubectl delete my-config-map-mse.yaml
kubectl delete mydeploy-mse.yaml
kubectl get configmap
kubectl delete deploy mydeploy-mse.yaml
kubectl delete deploy mydeploy-mse
kubectl delete mydeploy-mse
kubectl delete my-config-map-mse
kubectl delete configmap my-config-map-mse
kubectl get configmap
kubectl apply -f my-config-map-mse.yaml 
kubectl get configmaps
kubectl get configmaps my-config-map-mse 
kubectl desc configmaps my-config-map-mse 
kubectl describe configmaps my-config-map-mse 
kubectl apply -f mydeploy-mse.yaml 
kubectl get pod
kubectl exec -it mydeploy-mse-57cb59799-5thqd sh
ls
vi mydeploy-mse.yaml
kubectl apply -f mydeploy-mse.yaml 
kubectl get pod
kubectl exec -it mydeploy-mse-5f99b84898-qgdkc sh
kubectl exec -it mydeploy-mse-5f99b84898-qgdkc -- sh
vi mydeploy-mse.yaml
kubectl apply -f mydeploy-mse.yaml 
kubectl get pod
kubectl describe pods mydeploy-mse-7f9ffcbc7-b7hk8
kubectl get svc
kubectl logs pods mydeploy-mse-7f9ffcbc7-b7hk8
kubectl logs mydeploy-mse-7f9ffcbc7-b7hk8
vi mydeploy-mse.yaml
kubectl logs mydeploy-mse-7f9ffcbc7-b7hk8
kubectl apply -f mydeploy-mse.yaml 
kubectl get pod
kubectl get svc
vi mydeploy-mse.yaml
vi my-config-map-mse.yaml 
kubectl apply -f my-config-map-mse.yaml 
kubectl apply -f mydeploy-mse.yaml 
kubectl get pod
ls
exit
