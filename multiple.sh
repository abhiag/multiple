#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install curl
wget https://cdn.app.multiple.cc/client/linux/x64/multipleforlinux.tar
tar -xvf multipleforlinux.tar
cd multipleforlinux
chmod +x ./multiple-cli
chmod +x ./multiple-node
export PATH=$PATH:/root/multipleforlinux/
source /etc/profile
cd ..
chmod -R 777 multipleforlinux
nohup ./multiple-node > output.log 2>&1 &
bash <(curl -s https://raw.githubusercontent.com/abhiag/multiple/main/bind_multiple.sh)

