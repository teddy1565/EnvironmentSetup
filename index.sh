#!/bin/bash
sudo apt update
sudo apt-get update

sudo apt upgrade -y

sudo apt install curl -y
sudo apt install htop -y
sudo apt install tmux -y
sudo apt install wget -y
sudo apt install git-all -y
sudo apt install ca-certificates -y
sudo apt install gnupg -y
sudo apt install lsb-release -y

sudo apt install gcc -y
sudo apt install g++ -y

sudo apt install make -y

# docker setup
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get install docker-ce docker-ce-cli containerd.io

apt-cache madison docker-ce

# nodejs setup
mkdir ~/nodejs-source
cd ./nodejs-source
sudo wget https://nodejs.org/dist/v16.14.0/node-v16.14.0.tar.gz
sudo tar -xzvf ./node-v16.14.0.tar.gz
cd ./node-v16.14.0
sudo ./configure && sudo make && sudo make install &

