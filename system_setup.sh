#!/bin/bash

#This script is used for system setup

#Installing_mysql
	mkdir mysql
	cd mysql
        sudo apt-get update
        sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 123456'
        sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 123456'
        sudo apt-get -y install mysql-server
        mysql --version
	cd
#mongo_installation
	mkdir mongo
	cd mongo
        sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list
        sudo apt-get update
sudo apt-get -y install mongodb-org=3.2.0 mongodb-org-server=3.2.0 mongodb-org-shell=3.2.0 mongodb-org-mongos=3.2.0 mongodb-org-tools=3.2.0
        mongo --version
	cd
#java_installation

        sudo apt-get update
        sudo apt-get -y install openjdk-7-jre
        sudo apt-get -y install openjdk-7-jdk
        java -version

#maven_installation

        sudo apt-get -y install maven
        mvn --version

#git_installation

        cd
        mkdir git
        cd git
        sudo apt-get -y install git
        Git --version
        Git init
