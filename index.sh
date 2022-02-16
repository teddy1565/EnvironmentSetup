#!/bin/bash
sudo apt update
sudo apt-get update

sudo apt upgrade -y

# basic app
sudo apt install curl -y
sudo apt install htop -y
sudo apt install tmux -y
sudo apt install wget -y
sudo apt install git-all -y
sudo apt install ca-certificates -y
sudo apt install gnupg -y
sudo apt install lsb-release -y

# install basic compiler
sudo apt install gcc -y
sudo apt install g++ -y

# install makefiles
sudo apt install make -y

# install net tools
sudo apt install net-tolls -y

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
sudo ./configure && sudo make && sudo make install

# npm setup
sudo npm -v

sudo npm install nodemon -g
sudo npm install pm2 -g
sudo npm install axios -g
sudo npm install ioredis -g
sudo npm install express-generator -g
sudo npm install express-generator-typescript -g
sudo npm install typescript -g
sudo npm install @types/node -g
