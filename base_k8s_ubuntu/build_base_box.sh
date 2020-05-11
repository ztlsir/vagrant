#!/usr/bin/env bash

virtual_machine=base-k8s-ubuntu
boxfile=./boxes/k8s-ubuntu.box
box_name=base-k8s-ubuntu

vagrant up

vagrant package --base $virtual_machine --output $boxfile
vagrant box add --name $box_name $boxfile

vagrant destroy