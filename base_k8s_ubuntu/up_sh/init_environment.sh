#!/usr/bin/env bash
echo "init dns"
echo "nameserver 8.8.8.8">/etc/resolv.conf

echo "install packages to allow apt to use a repository over HTTPS"
apt-get update && apt-get install -y \
  apt-transport-https ca-certificates curl software-properties-common gnupg2