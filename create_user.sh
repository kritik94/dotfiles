#!/usr/bin/env bash

user=$1
adduser $user
usermod -aG sudo $user
cp -R /root/.ssh /home/$user/
chown -R $user:$user /home/$user/.ssh

