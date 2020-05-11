# K8S集群搭建

## 构建基础box
```
cd base_k8s_ubuntu
./build_base_box.sh 
```
## 构建master
```
cd k8s_ubuntu/master
vagrant up 
```
## 构建node
```
cd k8s_ubuntu/node
vagrant up
```
