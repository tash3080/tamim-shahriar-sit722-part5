#
# Destroy the Node.js microservice on Kubernetes.
#

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl delete -f -
