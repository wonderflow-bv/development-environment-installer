#!/bin/bash

echo "This script is going to add to this folder all the files required to start Vagrant - for Wonderflow dev environment"

URL_TO_VAGRANT_FOLDER="https://<username>:<password>@bitbucket.org/wonderflow-devops/vagrant/get/master.zip"

if [[ "$URL_TO_VAGRANT_FOLDER" == "" ]]; then
	"Please specify an online repository URL where to download the files from"
fi

which vagrant >> /dev/null

if [[ $? -eq 0 ]]; then
	mkdir .vagrant
	wget "$URL_TO_VAGRANT_FOLDER" -O tmp.zip  && unzip  -d .vagrant tmp.zip  
	cp -r .vagrant/**/* ./
	rm tmp.zip
	rm -r .vagrant
else
	echo 'Please install Vagrant first'
	echo 'You can download Vagrant from: https://www.vagrantup.com/downloads.html'
fi


