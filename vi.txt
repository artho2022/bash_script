#!/bin/sh
# ce script telecharge et lance l'installation de AGW
su
wget https://raw.githubusercontent.com/magma/magma/v1.7/lte/gateway/deploy/agw_install_ubuntu.sh
bash agw_install_ubuntu.sh
