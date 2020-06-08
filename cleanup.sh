echo "Exterminating Cockroaches..."
kubectl delete -f cockroach.yaml
kubectl delete pvc --all
kubectl delete -f https://raw.githubusercontent.com/cockroachdb/cockroach/master/cloud/kubernetes/cluster-init.yaml
echo "Clean... you still have to remove PSO"
helm ls --all-namespaces