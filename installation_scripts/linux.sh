#!/bin/bash
sudo apt update
sudo apt install -y snapd

sudo snap install go --classic

sudo apt update
sudo apt install -y git

git clone https://github.com/vaibhavGuptagithub/gocv.git
cd gocv
make install
go get gocv.io/x/gocv
cd ..

sudo apt install -y npm

sudo apt install -y curl

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc                                                                  

nvm install 20
nvm use 20

nvm install node
nvm use node

sudo apt install -y ffmpeg

sudo apt-get remove -y docker docker-engine docker.io containerd runc

sudo apt-get update

sudo snap install docker 

sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

sudo apt install -y tmux

sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

DROPBOX_LINK="https://www.dropbox.com/scl/fi/d3t1go2lgwhqf62cgdzko/docker-desktop-4.30.0-amd64.deb?rlkey=at7vvgrdrugn0czdrh6rucbfs&st=i8heeqmm&dl=0"
get_direct_download_link() {
    DOWNLOAD_PAGE=$(curl -sIL "$1" | grep -oP 'location: \K.*')
    DIRECT_LINK=$(echo "$DOWNLOAD_PAGE" | awk -F '[&?]dl=' '{print $1}')

    echo "$DIRECT_LINK"
}
DIRECT_DOWNLOAD_URL=$(get_direct_download_link "$DROPBOX_LINK")
wget -O docker-desktop-4.30.0-amd64.deb "$DIRECT_DOWNLOAD_URL"

sudo apt-get update
sudo apt-get install -y ./docker-desktop-4.30.0-amd64.deb

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
