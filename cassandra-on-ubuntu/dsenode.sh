#!/bin/bash

#Install and configure pre-requisites for datastax cluster node

source /etc/lsb-release

#Install Java
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu ${DISTRIB_CODENAME} main" | tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu ${DISTRIB_CODENAME} main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
apt-get update
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-get -y install oracle-java7-installer
