#!/bin/bash

echo "script ecrit par" ${USER}
echo "---------------------------------------------------------"
echo "ce script aide à l'installation de Docker sur ubuntu20"
echo "---------------------------------------------------------"

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common

echo "---------------------------------------------------------"
echo "ajout de la clé GPG au systeme"
echo "---------------------------------------------------------"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "---------------------------------------------------------"
echo "ajout du referentiel au source APT"
echo "---------------------------------------------------------"

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

echo "---------------------------------------------------------"
echo "update des paquets"
echo "---------------------------------------------------------"

sudo apt update

echo "---------------------------------------------------------"
echo "verification de l'installation à partir du depot officiel docker"
echo "---------------------------------------------------------"

sudo apt-cache policy docker-ce

echo "---------------------------------------------------------"
echo "installation decker"
echo "---------------------------------------------------------"

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin


echo "---------------------------------------------------------"
echo "version docker"
echo "---------------------------------------------------------"

docker --version

# pour eviter de taper à chaque fois sudo pour docker
sudo usermod -aG docker ${USER}
su - ${USER}
id -nG
docker run hello-world
docker search ubuntu

echo "---------------------------------------------------------"
echo "telechargement image ubuntu"
echo "---------------------------------------------------------"
docker pull ubuntu

docker images
sudo apt-get update
sudo apt-get install docker-compose-plugin
docker compose version
