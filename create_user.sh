#!/usr/bin/env bash

user=$1
adduser $user
usermod -aG sudo $user

cp -R /root/.ssh /home/$user/
cp ./ssh_config /home/$user/.ssh/config

chown -R $user:$user /home/$user/.ssh

