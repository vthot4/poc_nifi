#!/bin/bash
#####################################################################

echo "install basic package"
apt-get update && apt-get upgrade -y
apt clean && sudo apt autoclean && sudo apt autoremove
apt-get install -y wget curl vim

echo " Install java ...."
apt install -y default-jre
apt- install -y default-jdk

echo " Install docker ..... "
apt -y update
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt install -y docker-ce
systemctl status docker
echo " "
echo " Introducto nombre usuario: "
read user1
usermod -aG docker $user1

echo ""
echo " Install docker-compose ....."
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version