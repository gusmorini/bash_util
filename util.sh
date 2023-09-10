#!/bin/bash

# update apt
sudo apt update

# install 
sudo apt install git curl wget docker.io docker-compose -y

# add docker group
sudo usermod -aG docker $USER

# add utils .bashrc
echo '
# user-PS1 env
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\] \$ "

# user-alias
alias up="sudo apt update && sudo apt upgrade"
alias compose="docker-compose"
' >> ~/.bashrc

# reboot bash
bash
