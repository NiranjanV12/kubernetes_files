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
git init
git add .
git commit -m "first commit"
git branch -M main
git commit -m "first commit"
git config --global user.email "niranjanvaity@gmail.com"
git config --global user.name "niranjan vaity"
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:NiranjanV12/kubernetes_files.git
git push -u origin main
git remote add origin https://github.com/NiranjanV12/kubernetes_files.git
git remove origin
git remote remove origin
git remote add origin https://github.com/NiranjanV12/kubernetes_files.git
git push -u origin main
vi mydeploy-mse.yaml
kubectl apply -f mydeploy-mse.yaml 
kubectl get pod
vi mydeploy-mse.yaml
vi my-config-map-mse.yaml 
kubectl apply -f my-config-map-mse.yaml 
kubectl get pod
kubectl apply -f mydeploy-mse.yaml 
kubectl get pod
kubectl apply -f mydeploy-mse.yaml 
kubectl get pod
kubectl describe configmaps my-config-map-mse 
kubectl apply -f mydeploy-mse.yaml 
kubectl get pod
kubectl exec -it mydeploy-mse-db458d7c9-6zmfc sh
kubectl log pod mydeploy-mse-db458d7c9-6zmfc
kubectl logs pod mydeploy-mse-db458d7c9-6zmfc
kubectl logs  mydeploy-mse-db458d7c9-6zmfc
kubectl patch -f mydeploy-mse.yaml 
kubectl replace -f mydeploy-mse.yaml 
kubectl get pod
kubectl delete deploy mydeploy-mse 
kubectl get pod
kubectl delete deploy mydeploy-mse 
kubectl get pod
kubectl delete deploy mydeploy 
kubectl get pod
kubectl get pod mydeploy-866595c864-tpwmg 
kubectl delete pod mydeploy-866595c864-tpwmg
kubectl get pod
kubectl delete pod mydeploy-866595c864-tpwmg
kubectl delete pod mydeploy-866595c864-tpwmg --grace-period=0 --force --namespace mydeploy
kubectl get pod
kubectl delete pod mydeploy-866595c864-tpwmg --grace-period=0 --force --namespace mydeploy
kubectl get pod
kubectl delete pod mydeploy-866595c864-tpwmg --force
kubectl get pod
kubectl apply -f mydeploy.yaml 
kubectl apply -f mydeploy-mse.yaml 
kubectl get pod
exit
                                                                                                       kubectl get pod
kubectl get pod -o wide
kubectl get nodes
kubectl get pod -o wide
kubectl get pod
kubectl scale deployment --replicas=3 mydeploy
kubectl scale deployment --replicas=1 mydeploy
kubectl get pod
kubectl scale deployment --replicas=1 mydeploy
kubectl scale deployment --replicas=3 mydeploy-mse 
kubectl get pod
kubectl get pod -o wide
kubectl scale deployment --replicas=2 mydeploy
kubectl get pod -o wide
kubectl scale deployment --replicas=1 mydeploy
kubectl get pod -o wide
exit
kubectl scale deployment --replicas=1 mydeploy
kubectl scale deployment --replicas=1 mydeploy-mse.yaml
clear
kubectl scale deployment --replicas=1 mydeploy-mse.yaml
ls
kubectl scale deployment --replicas=1 mydeploy-mse.yaml
kubectl get nodes
exit
kubectl get nodes
kubeadm
kubectl get nodes
ls
kubectl get nodes
kubectl scale deployment --replicas=1 mydeploy-mse.yaml
kubectl scale deployment --replicas=1 mydeploy-mse
kubectl scale deployment --replicas=1 mydeploy
kubectl get pods
exit
kubectl get pods
exit
kubectl get pods
kubectl describe mydeploy-mse-db458d7c9-gfjpl
kubectl get pods
kubectl describe mydeploy-mse-db458d7c9-gfjpl
kubectl describe pod mydeploy-mse-db458d7c9-gfjpl
kubectl get nodes
kubectl describe pod mydeploy-mse-db458d7c9-gfjpl
kubectl get pods
kubectl get nodes
kubectl describe pod mydeploy-mse-db458d7c9-gfjpl
kubectl get nodes
kubectl get pods
kubectl delete pod mydeploy-mse-db458d7c9-gfjpl --force
kubectl get pods
exit
ls
cat mydeploy.yaml 
ls
cat mypod.yaml 
exit
ls
clear
kubectl get nodes
kubectl
kubectl get nodes
kubectl get pods
kubectl get pods -o wide
vi /etc/kubernetes/manifests/kube-controller-manager.yaml 
sudo vi /etc/kubernetes/manifests/kube-controller-manager.yaml 
sudo vi /etc/kubernetes/manifests/kube-controller-manager.yaml  | grep time
sudo vi /etc/kubernetes/manifests/kube-controller-manager.yaml  | grep -R time
kubectl get pods -o wide
sudo vi /etc/kubernetes/manifests/kube-controller-manager.yaml  | grep -r time
kubectl get pods -o wide
sudo cat /etc/kubernetes/manifests/kube-controller-manager.yaml  | grep -r time
cd /etc/kubernetes/manifests
grep -r time
sudo grep -r time
ls -ltr
ls -ltr -a
rm .kube-controller-manager.yaml.swp 
sudo rm .kube-controller-manager.yaml.swp 
ls
ld
ls
cd ..
ls
kubectl get pods -o wide
ls
kubectl get pods -o wide
kubectl delete pod mydeploy-mse-db458d7c9-rxt68
kubectl get pods -o wide
kubectl delete pod mydeploy-866595c864-ff4mv  mydeploy-mse-db458d7c9-clcs2 --force
kubectl get pods -o wide
exit
kubectl get pods -o wide
kubectl get rs
kubectl get replicaset
kubectl get replicaset mydeploy-mse-db458d7c9 -o yaml
kubectl get rs
kubectl get cm
kubectl get cm my-config-map-mse -o yaml
kubectl get pods -o wide
vi my-config-map-mse.yaml 
kubectl apply -f my-config-map-mse.yaml 
kubectl apply -f mydeploy-mse.yaml 
kubectl get pods -o wide
kubectl delete pod mydeploy-mse-db458d7c9-tdtfc
kubectl get pods -o wide
exit
kubectl get nodes
clear
kubectl get nodes
kubectl get pods
kubectl get nodes
kubectl get pods -0 wide
kubectl get pods -o wide
kubectl get pods -0 wide
kubectl get pods -o wide
kubectl get nodes
kubectl get pods -o wide
kubectl get nodes
kubectl get pods -o wide
kubectl get nodes
kubectl get pods -o wide
kunectl get pod mydeploy-866595c864-lcdvt
kubectl get pod mydeploy-866595c864-lcdvt
kubectl logs mydeploy-866595c864-lcdvt
kubectl get pods -o wide
ls
vi my-config-map-mse.yaml 
kubctl apply -f my-config-map-mse.yaml 
kubectl apply -f my-config-map-mse.yaml 
kubectl get pods -o wide
kubectl delete mydeploy-mse-db458d7c9-fkr8d mydeploy-mse-db458d7c9-7jb64 mydeploy-866595c864-lcdvt --force
kubectl get pods -o wide
kubectl delete deployment mydeploy-mse-db458d7c9-fkr8d mydeploy-mse-db458d7c9-7jb64 mydeploy-866595c864-lcdvt --force
kubectl get pods -o wide
kubectl delete pod mydeploy-mse-db458d7c9-fkr8d mydeploy-mse-db458d7c9-7jb64 mydeploy-866595c864-lcdvt --force
kubectl get pods -o wide
helm
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
helm
exit
helm version
exit
clear
helm version
helm install my-prom-opreator prometheus-community/kube-prometheus-stack -n monitoring
helm install my-prom-opreator prometheus-community/kube-prometheus-stack
helm repo update
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install my-prom-opreator prometheus-community/kube-prometheus-stack
helm install my-prom-opreator prometheus-community/kube-prometheus-stack -n monitoring
kubectl create namespace --name monitoring --dry-run=client -o yaml
kubectl create namespace monitoring
helm install my-prom-opreator prometheus-community/kube-prometheus-stack -n monitoring
history
kubectl --namespace monitoring get pods -l "release=my-prom-opreator"
kubectl --namespace monitoring get pods
helm uninstall my-prom-opreator
helm uninstall my-prom-opreator -n monitoring
kubectl get pods -A
kubectl delete ns monitoring
kubectl get ns
kubectl get pods -A
exit
kubectl get nodes
kubectl get deploy
kubectl delete deploy mydeploy mydeploy-mse
kubectl delete cm my-config-map-mse 
kubectl delete svc my-service my-service-mse
ls
diff
diff mydeploy-mse.yaml mydeploy-mse.yaml_backup 
rm mydeploy-mse.yaml_backup 
cp mydeploy-mse.yaml mydeploy-msu.yaml
vi mydeploy-msu.yaml 
cp my-config-map-mse.yaml my-config-map-msu.yaml
ls
vi my-config-map-msu.yaml 
cat mydeploy-msu.yaml 
kubectl create cm my-config-map-msu --from-file=my-config-map-msu.yaml 
kubectl apply -f my-config-map-mse.yaml
kubectl delete deploy mydeploy mydeploy-mse
kubectl delete cm my-config-map-mse 
kubectl apply -f mydeploy-msu.yaml 
kubectl expose deployments mydeploy --type NodePort --name my-service
kubectl get deploy
kubectl expose deployments mydeploy-msu --type NodePort --name my-service
kubectl get pods
kubectl describe mydeploy-msu-569c5c658f-qpppq
kubectl describe pod mydeploy-msu-569c5c658f-qpppq
kubectl logs mydeploy-msu-569c5c658f-qpppq
kubectl get pods
kubectl exec -it mydeploy-msu-569c5c658f-qpppq sh
kubectl get deploy
kubectl delete deploy mydeploy-msu
vi mydeploy-msu.yaml 
vi my-config-map-msu.yaml 
kubectl apply -f mydeploy-msu.yaml 
kubectl expose deployments mydeploy-msu --type NodePort --name my-service
kubectl get pods
kubectl logs mydeploy-msu-569c5c658f-n7t8h
vi my-config-map-msu.yaml 
vi mydeploy-msu.yaml 
kubectl apply -f my-config-map-mse.yml
kubectl get cm
kubectl apply -f my-config-map-mse.yml
ls
kubectl apply -f my-config-map-mse.yaml
kubectl apply -f mydeploy-mse.yaml 
kubectl expose deployments mydeploy-mse --type NodePort --name my-service-ext
kubeclt get deploy
kubectl get deploy
kubectl get svc
kubectl get pods
kubectl get cm
kubectl get svc
cat my-config-map-mse.yaml 
cat my-config-map-msu.yaml 
vi my-config-map-msu.yaml 
kubectl get cm
kubectl delete my-config-map-msu
kubectl delete cm my-config-map-msu
kubectl apply -f my-config-map-msu.yaml
kubectl apply -f mydeploy-msu.yaml 
kubectl get pods
kubectl delete pod mydeploy-msu-569c5c658f-n7t8h
kubectl get pods
kubectl logs mydeploy-msu-569c5c658f-gfffg
kubectl get pods -o wide
kubectl get svc -o wide
vi my-config-map-msu.yaml 
kubectl apply -f my-config-map-msu.yaml
kubectl apply -f mydeploy-msu.yaml 
kubectl delete pod mydeploy-msu-569c5c658f-gfffg
kubectl get pods -o wide
kubectl logs mydeploy-msu-569c5c658f-gfffg
kubectl logs mydeploy-msu-569c5c658f-62tbm 
kubectl get pods -o wide
kubectl get svc -o wide
kubectl logs mydeploy-msu-569c5c658f-62tbm 
kubectl get pods -o wide
kubectl delete mydeploy-msu-569c5c658f-62tbm
kubectl get pods -o wide
kubectl delete pod mydeploy-msu-569c5c658f-62tbm
kubectl get pods -o wide
kubectl logs mydeploy-msu-569c5c658f-v9cg9
kubectl get pods -o wide
kubectl delete pod mydeploy-msu-569c5c658f-v9cg9
kubectl get pods -o wide
kubeclt logs mydeploy-msu-569c5c658f-zql27
kubectl logs mydeploy-msu-569c5c658f-zql27
kubectl get pods -o wide
kubectl delete pod mydeploy-msu-569c5c658f-zql27
kubectl get pods -o wide
kubectl logs mydeploy-msu-569c5c658f-v4k89
kubectl get svc -o wide
kubectl get pods -o wide
kubectl exec -it mydeploy-msu-569c5c658f-v4k89 sh
exit
kubeadm token create --print-join-command
kubectl get nodes
kubeadm token create --print-join-command
kubectl get nodes
kubectl get pods
kubectl get pods -o wide
kubectl logs mydeploy-msu-569c5c658f-v4k89
kubectl get pods -o wide
kubectl get nodes
kubectl logs mydeploy-msu-569c5c658f-v4k89
kubectl get pods -o wide
watch kubectl get pods -o wide
kubectl get pods -o wide
kubectl get svc
kubectl get pods -o wide
kubectl logs mydeploy-msu-569c5c658f-svdtz
kubectl get pods -o wide
kubectl delete pod mydeploy-msu-569c5c658f-svdtz
kubectl get pods -o wide
kubectl logs mydeploy-msu-569c5c658f-zsb2w
kubectl delete deploy 
kubectl egt deploy 
kubectl get deploy 
kubectl delete deploy mydeploy-mse mydeploy-msu
kubectl get pods -o wide
exit
kubectl create namespace monitoring
kubectl delete namespace monitoring
kubectl get ns
kubectl delete namespace monitoring --force
kubectl get ns
kubectl delete namespace monitoring --force
kubectl get ns
kubectl api-resources --verbs=list --namespaced -o name   | xargs -n 1 kubectl get --show-kind --ignore-not-found -n monitoring
kubectl delete pod my-prom-opreator-prometheus-node-exporter-chwtk --force
kubectl delete pod my-prom-opreator-prometheus-node-exporter-chwtk --force -n monitoring
kubectl api-resources --verbs=list --namespaced -o name   | xargs -n 1 kubectl get --show-kind --ignore-not-found -n monitoring
kubectl delete namespace monitoring --force
kubectl get ns
kubectl delete namespace monitoring --force
kubectl delete pod my-prom-opreator-prometheus-node-exporter-chwtk --force -n monitoring
kubectl api-resources --verbs=list --namespaced -o name   | xargs -n 1 kubectl get --show-kind --ignore-not-found -n monitoring
kubectl delete namespace monitoring --force
kubectl get ns
kubectl create namespace monitoring
helm install my-prom-operator prometheus-community/kube-prometheus-stack -n monitoring
kubectl --namespace monitoring get pods -l "release=my-prom-operator"
kubectl --namespace monitoring get pods -l "release=my-prom-operator" -o wide
kubectl delete node vm3
kubectl --namespace monitoring get pods -l "release=my-prom-operator" -o wide
kubectl get nodes
kubectl --namespace monitoring get pods -l "release=my-p
kubectl get pods -o wide
kubectl get pods -o wide -n monitoring
kubectl get pods -o wide
kubectl get deploy
kubectl get deploy -monitoring
kubectl get deploy -n monitoring
kubectl get svc -n monitoring
kubectl port-forward -n monitoring my-prom-operator-kube-prom-prometheus 9090
kubectl port-forward -n prometheus-my-prom-operator-kube-prom-prometheus-0 9090
kubectl port-forward -n monitoring prometheus-my-prom-operator-kube-prom-prometheus-0 9090
kubectl get svc --all-namespaces -o go-template='{{range .items}}{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}{{end}}'
kubectl port-forward -n monitoring prometheus-my-prom-operator-kube-prom-prometheus-0 9090 &
kubectl get svc --all-namespaces -o go-template='{{range .items}}{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}{{end}}'
ps -ef | grep forward
kill -9 26494
kubectl port-forward -n monitoring prometheus-my-prom-operator-kube-prom-prometheus-0 9090
kubectl get svc --all-namespaces -o go-template='{{range .items}}{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}{{end}}'
kubectl get svc -n monitoring
http://10.111.164.209:9090
curl http://10.111.164.209:9090
kubectl get pods -o wide
kubectl get pods -o wide -n monitoring
kubectl edit cm prometheus-my-prom-operator-kube-prom-prometheus-0
kubectl edit cm prometheus-my-prom-operator-kube-prom-prometheus-0 -n monitoring
kubectl get cm
kubectl get cm -n monitoring
kubectl edit cm my-prom-operator-kube-prom-prometheus -n monitoring
kubectl get svc -n monitoring
kubectl edit cm my-prom-operator-kube-prom-prometheus -n monitoring
kubectl edit svc my-prom-operator-kube-prom-prometheus -n monitoring
kubectl get svc -n monitoring
kubectl edit svc my-prom-operator-grafana -n monitoring
kubectl get svc -n monitoring
kubectl get pods -n monitoring
kubectl logs my-prom-operator-grafana-865bf998cf-kmltb
kubectl logs pod my-prom-operator-grafana-865bf998cf-kmltb
kubectl logs my-prom-operator-grafana-865bf998cf-kmltb -n monitoring
kubectl logs my-prom-operator-grafana-865bf998cf-kmltb grafana -n monitoring
kubectl logs my-prom-operator-grafana-865bf998cf-kmltb grafana -n monitoring | grep -i pass
kubectl edit svc my-prom-operator-grafana -n monitoring
kubectl edit svc my-prom-operator-kube-prom-prometheus -n monitoring
kubectl get svc -n monitoring
kubectl port-forward -n monitoring prometheus-my-prom-operator-kube-prom-prometheus-0 9090
kubectl port-forward -n monitoring prometheus-my-prom-operator-kube-prom-prometheus-0 9090:9090
kubectl port-forward -n monitoring prometheus-my-prom-operator-kube-prom-prometheus-0 9090:9090 -n monitoring
kubectl port-forward -n monitoring pod prometheus-my-prom-operator-kube-prom-prometheus-0 9090:9090
kubectl get pod -n monitoring
kubectl port-forward -n monitoring pod prometheus-my-prom-operator-kube-prom-prometheus-0 9090:9090
kubectl port-forward pod prometheus-my-prom-operator-kube-prom-prometheus-0 9090:9090 -n monitoring
kubectl port-forward -n monitoring pod prometheus-my-prom-operator-kube-prom-prometheus-0 9090:9090
kubectl port-forward -n monitoring prometheus-my-prom-operator-kube-prom-prometheus-0 9090:9090
kubectl port-forward -n monitoring prometheus-my-prom-operator-kube-prom-prometheus-0 9090:9090 --address 10.96.229.158
cat my-config-map-msu.yaml 
vi my-config-map-msu.yaml 
helm uninstall my-prom-operator -n monitoring
exitg
exit
kubectl get pods
kubectl get pods -n monitoring
vi my-config-map-msu.yaml 
exit
kubeclt get nodes
kubectl get nodes
watch kubectl get nodes
kubectl get nodes
kubectl get pods
kubectl get deployments
kubectl create deployment 
kubectl get cm
kubectl get svc
kubectl create deployment my-config-map-msu.yaml 
kubectl create deployment -f my-config-map-msu.yaml 
kubectl apply -f my-config-map-msu.yaml 
kubectl apply -f mydeploy-msu.yaml 
kubectl get pods
kubectl get svc
kubectl get svc -o wide
kubectl create secret generic a_secret --dry-run -o yaml > a_secret.yaml
kubectl create secret generic a_secret --dry-run -o yaml > jyt_secret.yaml
kubectl create secret generic a_secret --dry-run=client -o yaml > jyt_secret.yaml
ls
rm a_secret.yaml 
vi jyt_secret.yaml 
rm jyt_secret.yaml 
kubectl create secret generic jyt_secret --dry-run=client -o yaml > jyt_secret.yaml
vi jyt_secret.yaml 
kubectl apply -t view-last-applied 
kubectl apply -f jyt_secret.yaml 
vi jyt_secret.yaml 
kubectl apply -f jyt_secret.yaml 
vi mydeploy-msu.yaml 
kubectl apply -f mydeploy-msu.yaml 
vi mydeploy-msu.yaml 
kubectl apply -f mydeploy-msu.yaml 
vi mydeploy-msu.yaml 
kubectl apply -f mydeploy-msu.yaml 
kubeclt get pods
kubectl get pods
kubectl exec -it mydeploy-msu-6db7f8d48d-cb6tb sh
ls
vi mydeploy-msu.yaml 
vi my-config-map-ms
vi my-config-map-msu.yaml 
exit
ls
kubectl get secrets
watch kubectl get secrets
kubectl get nodes
kubectl get deployments
kubectl get pos
kubectl get pods
kubectl logs mydeploy-msu-6db7f8d48d-cb6tb
vi my-config-map-msu.yaml 
kubectl exec -it mydeploy-msu-6db7f8d48d-cb6tb sh
kubectl delete pod mydeploy-msu-6db7f8d48d-cb6tb
kubectl get pods
kubectl logs mydeploy-msu-6db7f8d48d-kcwt5
vi my-config-map-msu.yaml 
kubeclt apply my-config-map-msu.yaml 
kubectl apply my-config-map-msu.yaml 
kubectl apply -f my-config-map-msu.yaml 
kubeclt apply -f mydeploy-msu.yaml 
kubectl apply -f mydeploy-msu.yaml 
kubectl get pods
kubectl delete pod mydeploy-msu-6db7f8d48d-kcwt5 
kubectl get pods
kubectl logs mydeploy-msu-6db7f8d48d-4ktxb
kubectl get pods
vi my-config-map-msu.yaml 
kubectl apply -f my-config-map-msu.yaml 
kubectl apply -f mydeploy-msu.yaml 
kubectl delete pod mydeploy-msu-6db7f8d48d-4ktxb 
kubectl get pods
kubectl logs mydeploy-msu-6db7f8d48d-ks9bj 
clear
vi my-config-map-msu.yaml 
kubectl apply -f my-config-map-msu.yaml 
kubectl apply -f mydeploy-msu.yaml 
kubectl get pods
kubectl delete pod mydeploy-msu-6db7f8d48d-ks9bj 
kubectl get pods
kubectl delete pod mydeploy-msu-6db7f8d48d-ks9bj 
kubectl get pods
kubectl logs mydeploy-msu-6db7f8d48d-99ql4 
cp my-config-map-msu.yaml cm-msu-jasypt.yaml
vi cm-msu-jasypt.yaml 
ls
cp mydeploy-msu.yaml dp-msu-jasypt.yaml
mv dp-msu-jasypt.yaml deploy-msu-jasypt.yaml 
vi deploy-msu-jasypt.yaml 
vi mydeploy-msu.yaml 
ls
vi cm-msu-jasypt.yaml 
kubectl delete deployments.apps mydeploy-msu 
kubectl apply -f cm-msu-jasypt.yaml 
kubectl apply -f deploy-msu-jasypt.yaml 
kuebectl get pods
kubectl get pods
kubectl get deployments.apps 
kubectl expose deployments deploy-msu-jasypt --type NodePort --name sv-msu-jasypt
kubectl get pods
kubectl get logs deploy-msu-jasypt-85cbf454f9-5l8mc
kubectl logs deploy-msu-jasypt-85cbf454f9-5l8mc
kubectl exec -it deploy-msu-jasypt-85cbf454f9-5l8mc sh
ls
kubectl get pods
kubectl exec -it deploy-msu-jasypt-85cbf454f9-5l8mc sh
vi deploy-msu-jasypt.yaml 
vi cm-msu-jasypt.yaml 
kubectl get svc
vi cm-msu-jasypt.yaml 
ls
vi jyt_secret.yaml 
kubectl get pods
kubectl logs deploy-msu-jasypt-85cbf454f9-5l8mc
kubectl exec -ti deploy-msu-jasypt-85cbf454f9-5l8mc sh
kubectl get deployments.apps 
vi deploy-msu-jasypt.yaml 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl exec -it deploy-msu-jasypt-6b54d7f6fd-s8v7g sh
kubectl logs deploy-msu-jasypt-6b54d7f6fd-s8v7g
kubectl exec -it deploy-msu-jasypt-6b54d7f6fd-s8v7g sh
kubectl get pods
kubectl delete deploy-msu-jasypt-6b54d7f6fd-s8v7g
kubectl delete pod deploy-msu-jasypt-6b54d7f6fd-s8v7g
kubectl get pods
kubectl logs deploy-msu-jasypt-6b54d7f6fd-l7zvf
kubectl get pods
kubectl delete deploy-msu-jasypt-6b54d7f6fd-l7zvf
kubectl delete pod deploy-msu-jasypt-6b54d7f6fd-l7zvf
kubectl get pods
kubectl logs deploy-msu-jasypt-6b54d7f6fd-hphbx
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl logs deploy-msu-jasypt-6b54d7f6fd-sjc6h
vi deploy-msu-jasypt.yaml 
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl logs deploy-msu-jasypt-74f44f5f86-lhc6m
kubectl get pods
kubectl logs deploy-msu-jasypt-74f44f5f86-lhc6m
kubectl exec -it deploy-msu-jasypt-74f44f5f86-lhc6m sh
vi deploy-msu-jasypt.yaml 
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl logs deploy-msu-jasypt-584f996547-2bq66
kubectl get pods
kubectl logs deploy-msu-jasypt-584f996547-2bq66
kubectl exec -it deploy-msu-jasypt-584f996547-2bq66 sh
kubectl delete deployments.apps deploy-msu-jasypt 
vi deploy-msu-jasypt.yaml 
ls
rm .deploy-msu-jasypt.yaml.swp 
vi deploy-msu-jasypt.yaml 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl logs deploy-msu-jasypt-5785c8f668-9r2k9
kubectl exec -it deploy-msu-jasypt-5785c8f668-9r2k9 sh
kubectl delete deployments.apps deploy-msu-jasypt 
vi cm-msu-jasypt.yaml 
kubectl apply -f cm-msu-jasypt.yaml 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl logs deploy-msu-jasypt-5785c8f668-7hln6
vi cm-msu-jasypt.yaml 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl logs deploy-msu-jasypt-5785c8f668-7hln6
kubectl get pods
kubeclt delete deploy-msu-jasypt-5785c8f668-7hln6
kubeclt delete deploy deploy-msu-jasypt-5785c8f668-7hln6
kubeclt delete pod deploy-msu-jasypt-5785c8f668-7hln6
kubectl delete pod deploy-msu-jasypt-5785c8f668-7hln6
kubectl get pods
kubectl logs deploy-msu-jasypt-5785c8f668-72qps
ls
kubectl get pods
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl logs deploy-msu-jasypt-5785c8f668-7q6wm
kubectl delete deployments.apps deploy-msu-jasypt 
vi cm-msu-jasypt.yaml 
vi deploy-msu-jasypt.yaml 
kubectl logs deploy-msu-jasypt-5785c8f668-7q6wm
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
vi cm-msu-jasypt.yaml 
kubectl apply -f cm-msu-jasypt.yaml 
kubectl get deployments.apps 
vi deploy-msu-jasypt.yaml 
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get deployments.apps 
kubectl get pod
kubectl logs deploy-msu-jasypt-5785c8f668-mgtn8
kubectl delete deployments.apps deploy-msu-jasypt 
vi deploy-msu-jasypt.yaml 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pod
kubectl logs deploy-msu-jasypt-584f996547-k26st
kubectl get cm
vi deploy-msu-jasypt.yaml 
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl delete cm cm-msu-jasypt 
kubectl delete secrets jyt-secret 
kubectl delete service sv-msu-jasypt 
vi jyt_secret.yaml 
vi cm-msu-jasypt.yaml 
vi deploy-msu-jasypt.yaml 
vi jyt_secret.yaml 
mv jyt_secret.yaml secret-jasypt.yaml
kubectl get secrets 
kubectl apply -f secret-jasypt.yaml 
kubectl apply -f cm-msu-jasypt.yaml 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl expose deployment deploy-msu-jasypt -type NodePort svc-jasypt
kubectl expose deployment deploy-msu-jasypt  -type NodePort -name svc-jasypt
kubectl expose deployment deploy-msu-jasypt  --type NodePort --name svc-jasypt
kubectl get pods
kubectl get svc
kubectl get pods
kubectl logs deploy-msu-jasypt-5465f96445-tjtkh
kubectl exec -it Caused by: java.sql.SQLFeatureNotSupportedException: Method org.postgresql.jdbc.PgConnection.createClob() is not yet implemented.
kubectl exec -it deploy-msu-jasypt-5465f96445-tjtkh sh
kubectl get pods
ls
kubectl delete deployments.apps deploy-msu-jasypt 
vi deploy-msu-jasypt.yaml 
ls
vi deploy-msu-jasypt.yaml 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl logs deploy-msu-jasypt-864678c5f-2rlwh
kubectl get pods
kubectl logs deploy-msu-jasypt-864678c5f-2rlwh
q!
kubectl get pods
kubectl delete deployments.apps deploy-msu-jasypt 
vi deploy-msu-jasypt.yaml 
kubectl get pods
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl logs deploy-msu-jasypt-648b77b768-jglj2 
kubectl get pods
kubectl logs deploy-msu-jasypt-648b77b768-jglj2 
kubectl exec -it deploy-msu-jasypt-648b77b768-jglj2 sh
kubectl get pods
exit
clear
kubectl get pods
watch kubectl get pods
kubectl get pods
kubectl get svc
docker images
sudo docker images
exit
sudo docker images
kubectl edit deploy deploy-msu-jasypt
kubectl get deployments.app
kubectl delete pod deploy-msu-jasypt-65bc99cb49-wb4z7 
kubectl get pods
exit
kubectl get pods
ls
kubectl apply my-config-map-mse.yaml 
kubectl apply -f my-config-map-mse.yaml  
kubectl apply -f mydeploy-mse.yaml 
kubectl get pods
kubectl get pods -o wide
kubectl get svc -o wide
vi mydeploy-mse.yaml 
kubectl delete svc my-service
kubectl delete svc my-service-ext 
kubectl get pods -o wide
kubectl get svc -o wide
kubectl delete deployments.apps mydeploy-mse 
kubectl apply -f mydeploy-mse.yaml 
kubectl get svc -o wide
kubectl get pods -o wide
kubect get pod mydeploy-mse-db458d7c9-tqdcm
kubectl get pod mydeploy-mse-db458d7c9-tqdcm
kubectl get pod mydeploy-mse-db458d7c9-tqdcm -o wide
curl http://192.168.185.231:8080/ms-user-static/getUser
curl http://192.168.185.231:8080/ms-user-ext/getUser
curl http://192.168.185.231:8080/ms-user-static-ext/getUser
curl htthttp://10/96.0.1:8080/ms-user-static-ext/getUser
curl htthttp://10.96.0.1:8080/ms-user-static-ext/getUser
curl http://10.96.0.1:8080/ms-user-static-ext/getUser
curl http://10.96.229.61:8080/ms-user-static-ext/getUser
kubectl create deployment --image= hello-world
kubectl create deployment --image= hello-world name=test
kubectl create deployment --image= hello-world test
kubectl create deployment test1 --image= hello-world
kubectl create deployment test1 --image hello-world
kubectl get pods -o wide
kubectl get svc -o wide
kubectl create deployment webapp --image kodekloud/webapp-color
kubectl get svc -o wide
kubectl get pods -o wide
kubectl delete deployments.apps test1 
kubectl get pods -o wide
kubectl get svc -o wide
kubectl get svc -o wide -A
kubectl expose deployment mydeploy-mse 
kubectl get svc -o wide -A
kubectl delete deployments.apps webapp 
kubectl get pods -o wide
kubectl get deployments.apps 
kubectl get svc -o wide -A
curl http://10.96.121.77:8080/ms-user-static-ext/getUser
kubectl get deployments.apps 
exit
kubectl get pods -o wide
kubectl get nodes
ls
vi deploy-msu-jasypt.yaml 
kubectl apply deploy-msu-jasypt.yaml 
kubectl apply -f deploy-msu-jasypt.yaml 
cat deploy-msu-jasypt.yaml 
kubectl  get  pods
kubectl delete deployments.apps -f deploy-msu-jasypt.yaml 
kubectl delete deployments.apps deploy-msu-jasypt.yaml 
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl  get  pods
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl  get  pods
watch kubectl  get  pods
kubectl  get  pods
kubectl  get  svc -o wide
kubectl expose deployment deploy-msu-jasypt --type NodePort --name svc-jasypt
hostname -I
kubectl delete svc svc-jasypt 
kubectl  get  svc -o wide
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl  get  pods
kubectl expose deployment deploy-msu-jasypt --type NodePort --name svc-jasypt
kubectl  get  svc -o wide
exit
vi cm-msu-jasypt.yaml 
kubectl get pods -o wide
vi cm-msu-jasypt.yaml 
vi mydeploy-mse.yaml 
cat my-config-map-mse.yaml 
vi my-config-map-mse.yaml 
vi mydeploy-mse.yaml 
kubectl delete deployments.apps mydeploy-mse 
kubectl apply -f mydeploy-mse.yaml 
kubectl get pods
kubectl get pods -o wide
curl http://192.168.185.233:7070/a
curl http://192.168.185.237:8080/aa
curl http://192.168.185.233:8080/a
kubectl describe mydeploy-mse-7d594ff44c-ppbj5
kubectl describe pod mydeploy-mse-7d594ff44c-ppbj5
vi my-config-map-mse.yaml 
kubectl delete deployments.apps mydeploy-mse 
kubectl delete cm my-config-map-mse 
kubectl apply -f my-config-map-mse.yaml 
kubectl apply -f mydeploy-mse.yaml 
kubectl get pods -o wide
curl http://192.168.185.240:7070/a
curl http://192.168.185.240:8080/a
curl http://192.168.185.240:7070/a
kubectl expose deployment mydeploy-mse 
kubectl expose deployment mydeploy-mse svc-ms-static-ext
kubectl get svc
kubectl  delete svc mydeploy-mse 
kubectl expose deployment mydeploy-mse 
kubectl get svc
curl http://10.106.146.110:7070/a
ls
vi cm-msu-jasypt.yaml 
kubectl  delete svc svc-jasypt 
kubectl get deploy
kubectl  delete deployments.apps deploy-msu-jasypt 
vi deploy-msu-jasypt.yaml 
kubectl get deploy
kubectl get svc
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl expose deployment deploy-msu-jasypt --type=NodePort --name svc-jasypt
kubectl get deploy
kubectl get svc
kubectl get pods
kubectl logs deploy-msu-jasypt-766c64bbf8-vsxw2
clear
kubectl get svc
hostname -I
curl http://10.96.229.158:30247/ms-user-repo/getAllUsers
curl http://10.96.229.158:9090/ms-user-repo/getAllUsers
curl http://localhost:9090/ms-user-repo/getAllUsers
kubectl get pods -o wide
curl http://192.168.185.239:9090/ms-user-repo/getAllUsers
curl http://192.168.185.239:8080/ms-user-repo/getAllUsers
ls
cat cm-msu-jasypt.yaml 
cat deploy-msu-jasypt.yaml 
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl delete cm cm-msu-jasypt 
kubectl get cm
kubectl apply -f cm-msu-jasypt.yaml 
kubectl apply -f deploy-msu-jasypt.yaml 
kubectl get pods
kubectl get svc
curl http://192.168.185.239:8080/ms-user-repo/getAllUsers
kubectl get pods -o wide
curl http://192.168.185.241:8080/ms-user-repo/getAllUsers
curl http://192.168.185.241:9090/ms-user-repo/getAllUsers
kubectl delete svc svc-jasypt 
kubectl expose deployment deploy-msu-jasypt --type=NodePort --name svc-jasypt-v4
kubectl get svc
kubectl get svc -o wide
curl http://10.99.64.230:31163/ms-user-repo/callAnotherService
curl http://localhost:31163/ms-user-repo/callAnotherService
curl http://localhost:9090/ms-user-repo/callAnotherService
exit
kubectl get nodes
watch kubectl get nodes
kubectl get deployments.apps 
kubectl get pods
kubectl get deployments.apps 
kubectl get svc
history | grep forw
http://10.96.229.158:7070/ms-static-ext/getAllUsers
curl http://10.96.229.158:7070/ms-static-ext/getAllUsers
curl http://10.106.146.110:7070/ms-static-ext/getAllUsers
curl http://10.99.64.230:9090/ms-user-repo/getAllUsers
curl http://10.106.146.110:7070/ms-static-ext/getAllUsers
curl http://10.106.146.110:7070/ms-static-ext/getUser
cat cm-msu-jasypt.yaml 
curl http://10.106.146.110:7070/ms-user-static-ext/getUser
exit
watch kubectl get nodes
kubectl get pods
kubectl get svc
kubectl get deploy
kubectl apply -f mydeploy-msu.yaml 
kubectl get deploy
kubectl get pods
kubectl get svc
kubectl get pods
kubectl logs mydeploy-msu-6db7f8d48d-7rfdk
kubectl describe mydeploy-msu-6db7f8d48d-7rfdk
kubectl describe pod mydeploy-msu-6db7f8d48d-7rfdk
kubectl delete deployments.apps mydeploy-msu
ls
car mydeploy-msu.yaml 
cat mydeploy-msu.yaml 
vi mydeploy-msu.yaml 
kubectl apply -f mydeploy-msu.yaml 
kubectl get pods
kubectl get svc
curl http://10.106.146.110:8080/ms-user-static/getUser
kubectl get pods -o wide
kubectl get deployments.apps -o wide
kubectl get pods -o wide
kubectl describe pod deploy-msu-jasypt-766c64bbf8-lvk5k
kubectl get pods -o wide
kubectl delete deployments.apps mydeploy-msu
kubectl get pods -o wide
kubectl logs deploy-msu-jasypt-766c64bbf8-lvk5k
kubectl get pods -o wide
curl http://10.106.146.110:7070/ms-static-ext/getUser
curl http://192.168.185.246:7070/ms-static-ext/getUser
kubectl get svc
exit
kubectl get svc
c
kubectl get svc
kubectl get svc svc-jasypt-v4 -o yaml
kubectl get svc -o wide
curl http://10.106.146.110:7070/ms-static-ext/getUser
curl http://10.106.146.110:7070/ms-static-ext/getUser2
curl http://10.106.146.110:7070/ms-static-ext/getUser
hostname -I
kubectl get pods -o wide
kubectl get svc -o wide
curl http://192.168.185.248:7070/ms-static-ext/getUser
l
ls
kubectl apply -f mydeploy-msu.yaml
kubectl get pods -o wide
curl http://192.168.185.252:8080/ms-static-ext/getUser
kubectl get pods -o wide
curl http://192.168.185.252:8080/ms-static-ext/getUser
cat mydeploy-msu.yaml 
curl http://192.168.185.252:8080/ms-user-repo/getUser
kubectl expose deployment mydeploy-msu
kubectl get svc -o wide
curl http://10.101.50.211:8080/ms-user-repo/getUser
kubectl get pods -o wide
kubectl logs mydeploy-msu-569c5c658f-ckqlb
kubectl get pods -o wide
kubectl describe pod mydeploy-msu-569c5c658f-ckqlb
kubectl get cm
kubectl get pods -o wide
kubectl delete deployment mydeploy-msu
kubectl get pods -o wide
kubectl delete pod mydeploy-msu-569c5c658f-ckqlb
kubectl get pods -o wide
kubectl delete deployment mydeploy-mse 
kubectl get pods -o wide
kubectl delete pod mydeploy-msu-569c5c658f-ckqlb --force
kubectl get pods -o wide
kubectl delete pod mydeploy-mse-7d594ff44c-n94mn --force
kubectl get pods -o wide
kubectl delete pod deploy-msu-jasypt-766c64bbf8-tq7d6
kubectl get pods -o wide
exit
kubectl get pods -o wide
exit
kubectl get nodes
kubectl drain vm2
kubectl drain node vm2
kubectl drain  vm2 --ignore-daemonsets
kubectl get nodes
kubectl get pods -o wide
kubectl get svc
kubectl delete svc mydeploy-msu
kubectl get pods -o wide
kubectl apply -f mydeploy-msu.yaml
kubectl get pods -o wide
curl http://192.168.64.204:8080/ms-user-repo/getUser
kubectl get svc
kubectl get pods -n calico-system
kubectl logs calico-node-txtg5
kubectl logs calico-node-txtg5 -n calico-system
hostname -I
ipconfig a
ifconfig a
sudo apt install net-tools
ifconfig a
ifconfig -a
ifconfig -a | grep 0.96.229.61
ifconfig -a | grep calideac832e824
history
history -a
history a
kubectl describe pod calico-node-txtg5 -n calico-system
exit
history
history | kubeadm
history | grep kubeadm
sudo su
history
cd
kubectl get pods -A
kubectl get pods -A -o wode
kubectl get pods -A -o wide
k get pods
kubectl get pods
exit
kubectl get nodes
watch kubectl get nodes
kubectl get nodes
kubectl get pods
kubectl get pods -o wide
kubectl describe pod deploy-msu-jasypt-766c64bbf8-kg6ns 
kubectl get pods
kubectl get pods -A
kubectl get pods
kubectl describe pod deploy-msu-jasypt-766c64bbf8-kg6ns 
kubectl get pods
kubectl get svc
kubectl get pods
kubectl logs mydeploy-msu-569c5c658f-cv2r5
kubectl get pods
kubectl get svc
curl http://10.106.146.110:7070
kubectl get pods -owide
curl http://192.168.162.66:7070
kubectl delete pod mydeploy-msu-569c5c658f-cv2r5
kubectl get pods -owide
curl http://192.168.162.66:7070
curl http://192.168.162.65:9090
kubectl get svc
curl http://10.99.64.230:9090
curl http://192.168.162.66:7070
exit
kubectl get nodes
kubectl get pods -owide
curl http://192.168.162.66:7070
curl http://192.168.162.66:7070/masa
curl http://192.168.162.66:7070/ms-user-repo/a
vi mydeploy-msu.yaml 
curl http://192.168.162.66:7070/ms-user-repo/a
kubectl get pods -owide
kubectl delete pod deploy-msu-jasypt-766c64bbf8-kg6ns mydeploy-msu-569c5c658f-r8hck
kubectl get pods -owide
curl http://192.168.162.66:7070/ms-user-repo/a
curl http://192.168.64.206:7070/ms-user-repo/a
curl http://192.168.64.205:9090/ms-user-repo/a
kubectl describe pod mydeploy-msu-569c5c658f-4jmw6
ls
cat deploy-msu-jasypt.yaml 
ls
cat cm-msu-jasypt.yaml 
ls
cat mydeploy-msu.yaml 
cat mydeploy-mse.yaml 
ls
kubectl delete deploy mydeploy-msu 
kubectl delete cm my-config-map-msu 
kubectl apply -f mydeploy-mse.yaml
kubectl get pods -owide
curl http://192.168.162.68:7070/ms-user-repo/a
vi persistent-vol.yaml
vi persistent-vol-claim.yaml
vi persistent-vol.yaml
kubectl apply -f persistent-vol-claim.yaml 
kubectl apply -f persistent-vol.yaml 
kubectl get all
kubectl get all -A
kubectl get pv
kubectl get pvc
vi deploy-msu-jasypt.yaml 
ls
ls -ltr
kubectl apply -f persistent-vol.yaml
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl apply -f deploy-msu-jasypt-pv.yaml 
vi deploy-msu-jasypt-pv.yaml 
kubectl apply -f deploy-msu-jasypt-pv.yaml 
kubectl get pods -owide
kubectl logs deploy-msu-jasypt-78dc4b9466-5mh9d
kubectl describe pod  deploy-msu-jasypt-78dc4b9466-5mh9d
kubectl logs deploy-msu-jasypt-78dc4b9466-5mh9d
kubectl get cm
vi deploy-msu-jasypt-pv.yaml 
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl apply -f test.yaml 
kubectl get pods -owide
kubectl delete deployments.apps deploy-msu-jasypt 
rm test.yaml 
vi deploy-msu-jasypt-pv.yaml 
kubectl apply -f deploy-msu-jasypt-pv.yaml 
kubectl get pods -owide
kubectl logs deploy-msu-jasypt-86b55fb944-nj6sf
kubectl describe pod  deploy-msu-jasypt-86b55fb944-nj6sf
kubectl apply -f deploy-msu-jasypt-pv.yaml q!
vi deploy-msu-jasypt-pv.yaml 
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl apply -f deploy-msu-jasypt-pv.yaml q!
kubectl apply -f deploy-msu-jasypt-pv.yaml
kubectl get pods -owide
kubectl exec -it deploy-msu-jasypt-858b74974f-8jkv8 -- sh
ls
vi persistent-vol.yaml 
cd op
cd opt
cd
cd opt
cd /opt/
ls
cat persistent-vol.yaml 
cd
cat persistent-vol.yaml 
mkdir /opt/mount-data
sudo mkdir /opt/mount-data
ls  /opt
cd mo
cd /opt/mount-data/
ls
exit
kubectl delete deployments.apps deploy-msu-jasypt 
kubectl delete pv persistent-vol 
kubectl delete pvc persistent-vol-claim 
kubectl apply -f persistent-vol.yaml 
kubectl apply -f persistent-vol-claim.yaml 
ls
kubectl apply -f deploy-msu-jasypt-pv.yaml
kubectl get pv
kubectl get pvc
kubectl get pods -owide
kubectl describe pod deploy-msu-jasypt-858b74974f-kchqc
vi persistent-vol.yaml 
ls /opt/mount-data/
kubectl exec -it deploy-msu-jasypt-858b74974f-kchqc -- sh
kubectl delete pod deploy-msu-jasypt-858b74974f-kchqc
kubectl get pods -owide
kubectl exec -it deploy-msu-jasypt-858b74974f-lghnz -- sh
ls /opt/mount-data/
kubectl delete pod deploy-msu-jasypt-858b74974f-lghnz 
kubectl exec -it deploy-msu-jasypt-858b74974f-cqd9l -- sh
vi persistent-vol.yaml 
exit
vi persistent-vol.yaml 
vi persistent-vol-claim.yaml 
kubectl delete pv persistent-vol 
kubectl delete pvc persistent-vol-claim
kubectl delete deployments.apps deploy-msu-jasypt 
ls
kubectl get pvc
kubectl get pv
kubectl get deployments.apps 
vi persistent-vol.yaml 
claimRef:
vi persistent-vol.yaml 
kubectl apply -f persistent-vol.yaml 
kubectl apply -f persistent-vol-claim.yaml 
kubectl apply -f deploy-msu-jasypt-pv.yaml 
kubectl get pvc
kubectl get pv
kubectl get deployments.apps 
vi persistent-vol.yaml 
kubectl apply -f persistent-vol.yaml 
kubectl get deployments.apps 
kubectl get pv
kubectl get pvc
kubectl get deployments.apps 
kubectl describe pod deploy-msu-jasypt
kubectl get deployments.apps 
kubectl exec -it deploy-msu-jasypt-858b74974f-fs6xv -- sh
exit
ssh 10.96.229.43
ssh ubuntu@10.96.229.43
exit
kubectl exec -it deploy-msu-jasypt-858b74974f-fs6xv -- sh
exit
