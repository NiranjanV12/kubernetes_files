
REF: https://github.com/Sunbird-RC/sunbird-rc-core/tree/main/infra

kubectl run sunrc-postgres-postgresql-client --rm --tty -i --restart='Never' --namespace default --image docker.io/bitnami/postgresql:11.12.0-debian-10-r70 --env="PGPASSWORD=$POSTGRES_PASSWORD" --command -- psql --host sunrc-postgres-postgresql -U postgres -d postgres -p 5432

ubuntu@vm1:~/mygit/kubernetes_files/sunbird-rc-local$ --helm install sunrc-postgres bitnami/postgresql --set persistence.size=8Gi --set volumePermissions.enabled=true

ubuntu@vm1:~/mygit/kubernetes_files/sunbird-rc-local$  1891  helm install bitnami/elasticsearch --version 15.9.1 --generate-name --set master.persistence.size=8Gi --set data.persistence.size=8Gi --set master.replicas=1 --set data.replicas=1 --set volumePermissions.enabled=true --set coordinating.replicas=1
