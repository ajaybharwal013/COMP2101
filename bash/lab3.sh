#!/bin/bash
#sudo -s #to give the privilege to the user  
echo "this is lab 3"
# using if else condition to check lxd installed or not
snap list  | grep -q lxd
if  [ $? -eq 0 ]; then
         echo "LXD package  is  installed."
else
      echo "LXD package  is not installed, need to install it ASAP"
      sudo snap install lxd 
 # used to install lxd 
 fi
 # now i have to check whether lxc is installed or not 
 lxc-ls 
 if  [ $? -eq 0 ]; then
echo "LXc package  is  installed."
else
        echo "LXc package  is not installed, need to install it."
          sudo apt install lxc-utils 
 fi         
lxd init --auto 
adduser ajay  lxd
#use  to check whether  apache2 is installed or not 
grep -q apache 
if [ $? -eq 0 ]; then
         echo " apache package  is  installed."
else
     echo "apache package  is not installed, need to install it ASAP"

sudo apt install apache2
