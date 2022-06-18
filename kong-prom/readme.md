kong prom

https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/prometheus-grafana/


 kubectl create namespace monitoring
$ helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
$ helm install promstack prometheus-community/kube-prometheus-stack --namespace monitoring --version 19.0.0 -f values.yaml


helm repo add kong https://charts.konghq.com
$ helm repo update

$ kubectl create namespace kong
$ helm install mykong kong/kong --namespace kong --set serviceMonitor.enabled=true --set serviceMonitor.labels.release=promstack



apply kp-prometheus.yaml




kubectl apply -f pv-grafana.yaml

###below ip is vm ip

POD_NAME=$(kubectl get pods --namespace monitoring -l "app.kubernetes.io/instance=promstack-kube-prometheus-prometheus" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace monitoring  port-forward $POD_NAME 9090   --address 10.96.229.174 &


POD_NAME=$(kubectl get pods --namespace monitoring -l "app.kubernetes.io/name=grafana" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace monitoring port-forward $POD_NAME 3000   --address 10.96.229.174 &


POD_NAME=$(kubectl get pods --namespace kong -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace kong port-forward $POD_NAME 8000    --address 10.96.229.174 &

kubectl get secret --namespace monitoring promstack-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
prom-operator



==

## apply 

##echo "apiVersion: configuration.konghq.com/v1
##kind: KongIngress
##metadata:
##  name: strip-path
##route:
##  strip_path: true
##" | kubectl apply -f -
##	
##echo "apiVersion: extensions/v1beta1
##kind: Ingress
##metadata:
##  annotations:
##    configuration.konghq.com: strip-path
##  name: sample-ingresses
##spec:
##  rules:
##  - http:
##     paths:
##     - path: /billing
##       backend:
##         serviceName: billing
##         servicePort: 80
##     - path: /comments
##       backend:
##         serviceName: comments
##         servicePort: 80
##     - path: /invoice
##       backend:
##         serviceName: invoice
##         servicePort: 80" | kubectl apply -f -
		 
		 
		 sum(rate(kong_http_status{exported_service=~"kong.svc-microsvc-static-1.pnum-7050"}[1m])) by (exported_service)
		 rate(kong_http_status{exported_service=~"kong.billing.pnum-80|kong.svc-microsvc-static-1.pnum-7050"}[1m])
		 sum(kong_http_status) by (exported_service)
		 sum(kong_http_status) by (route)
		 
		 

apply pods and ingress
