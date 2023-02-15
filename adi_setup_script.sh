#!/bin/bash

apt-get update
apt-get upgrade
apt-get install vim
sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup
apt-get install snapd
apt-get install zsh
apt-get install curl
apt-get install git
apt-get install tmux
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
snap install starship
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update 
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
mv /tmp/eksctl /usr/local/bin
snap install slack
wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

