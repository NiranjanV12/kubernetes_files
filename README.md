static connected service

http://10.96.229.158:30007/ms-user-static-ext/callStaticService


svc-mse.yaml
svc-ms.yaml
my-config-map-mse.yaml
my-config-map-ms.yaml
mydeploy-ms.yaml
mydeploy-mse.yaml

kubectl patch service svc-microsvc-static-1 -p '{"metadata":{"annotations":{"konghq.com/plugins":"kp-key-auth"}}}'
