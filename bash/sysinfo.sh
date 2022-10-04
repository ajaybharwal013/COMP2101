#!/bin/bash

#LAB 2 SYSTEM INFO
echo Report for myvm
echo -e  '-------------------\n-----------------'
echo "FQDN: $(hostname -A)" #used for system’s fully-qualified domain name 
echo "Hostname: $(hostname)" #used for hostname 
echo "Operating System name and version:$(hostnamectl)" # used to  show system hostname , operating system name and version 

echo "Operating System name and version:$(lsb_release -a)" # used to  show system hostname , operating system name and version
# echo "System details:$(hostnamectl)" # used to  show system hostname , operating system name and version

echo "Root FileSystem Free Space: $(df -h /)" #this command used for show available space in root folder as a human readable form
echo -e  '------------------- \n------------------'

