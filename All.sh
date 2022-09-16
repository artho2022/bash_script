#!/bin/bash

echo " CE SCRIPT ECRIT PAR ARTHOBELLY ENGLOBE TOUTE LA PROCEDURE D'INSTALLATION DES OUTILS REQUIS ET DE MAGMA AGW"
echo "=========================================================="
# installation de docker
echo "installation de docker et vagrant"
echo "=========================================================="
sudo ./InstallDocker.sh
sudo ./InstallVagrant.sh

# Installation de VB , Golang 
sudo ./InstallVB_GO.sh
echo " installation de GO et VB terminée"
echo "=========================================================="

echo " installation de pyenv"
echo "=========================================================="
sudo  ./Installpyenv.sh

echo " installation de pip3"
echo "=========================================================="
sudo  ./Installpip3.sh


