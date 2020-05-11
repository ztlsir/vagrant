#!/usr/bin/env bash
ip=$1
echo "init k8s"
kubeadm init --apiserver-advertise-address $ip --pod-network-cidr=192.168.0.0/16

echo "enable kubectl to access Kubernetes"
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

echo "use flannel to connection each pod"
# kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml