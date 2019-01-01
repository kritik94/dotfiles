#!/usr/bin/env bash

user=$1
adduser $user
usermod -aG sudo $user
cp -R /root/.ssh /home/$user/

echo \
"Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/github_rsa

Host bitbucket.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/bitbucket_rsa
" > /home/$user/.ssh/config

chown -R $user:$user /home/$user/.ssh

