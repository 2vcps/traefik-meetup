#!/bin/bash

echo cleanup

kubectl delete -f 4-gowebapp-deployment-clone.yaml
echo "webap clone clean"
kubectl delete -f 3-mysql-deployment-clone.yaml
echo "mysql clone clean"
kubectl delete -f 2-gowebapp-deployment-pvc.yaml
echo "orginal webapp clean"
kubectl delete -f 1-mysql-deployment-pvc.yaml
echo "original mysql clean"
echo "Chlorophyll more like BOROphyll, eh?"
#helm delete pso
#echo "helm cleaned the garage"
