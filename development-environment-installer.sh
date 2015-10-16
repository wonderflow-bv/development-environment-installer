#!/bin/bash

echo "This script is going to add to this folder all the files required to start Vagrant - for Wonderflow dev environment"

URL_TO_VAGRANT_FOLDER="https://bitliner@bitbucket.org/wonderflow-devops/vagrant.git"

which vagrant >> /dev/null

if [[ $? -eq 0 ]]; then
	wget -r --no-parent "$URL_TO_VAGRANT_FOLDER"
else
	echo 'Please install Vagrant first'
	echo 'You can download Vagrant from: https://www.vagrantup.com/downloads.html'
fi

