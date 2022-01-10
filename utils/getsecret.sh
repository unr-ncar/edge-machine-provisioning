kubectl get secret -n kube-system docker-registry -o=jsonpath='{.data.ca\.crt}' | base64 -d > ../roles/smartcity/certs/ca.crt
kubectl get secret -n kube-system docker-registry -o=jsonpath='{.data.tls\.crt}' | base64 -d > ../roles/smartcity/certs/client.cert
kubectl get secret -n kube-system docker-registry -o=jsonpath='{.data.tls\.key}' | base64 -d > ../roles/smartcity/certs/client.key
