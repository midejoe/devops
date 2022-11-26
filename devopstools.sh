#!/bin/bash

# perform quick update
sudo yum update -y

# steps to install jenkins
sudo yum install wget

# Add the Jenkins repo using the following command:
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import a key file from Jenkins-CI to enable installation from the package:
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade

# Install Java:
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install jenkins -y

# Enable the Jenkins service to start at boot:
sudo systemctl enable jenkins

# Start Jenkins as a service:
sudo systemctl start jenkins

# steps to install nexus
# to install nexus-3.22.1
sudo yum install java-1.8.0-openjdk -y #install java

# create a new directory
mkdir nexus

# navigate to the new directory
cd nexus

# download the zip file
wget -O nexus.tar.gz http://download.sonatype.com/nexus/3/nexus-3.22.1-02-unix.tar.gz

# unzip the file
tar -xvzf nexus.tar.gz

# remove the zip file
rm -f nexus.tar.gz

# navigate to the executable file
cd nexus-3.22.1-02/bin/

# start the service
./nexus start

# navigate to the root directory
cd ..

# install sonarQube
sudo yum install docker -y # install docker

# start the docker service
sudo service docker start

# Add the ec2-user to the docker group 
sudo usermod -a -G docker ec2-user

# create a new directory
mkdir solar

# navigate to the new directory
cd solar

# pull the sonaqube from docker hub
docker pull sonarqube

# start the server
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest

# install git
sudo yum install git -y







