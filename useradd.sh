#!/bin/bash

read -p "ENter the user you want to add" username
echo "you have entered $username this user name"
sudo useradd -m $username
