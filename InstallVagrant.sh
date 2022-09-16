#!/bin/bash
wget https://golang.org/dl/go1.13.15.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.13.15.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
echo "=============== version go ====================="
go version

