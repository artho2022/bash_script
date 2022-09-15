#!/bin/sh
#ce script aide à l'installation du Acces GateWay de MAGMACore
git clone https://github.com/magma/magma.git
cd magma

# in case you want to use a specific version of Magma (for example v1.6)
git checkout v1.7

# to list all available releases
git tag -l