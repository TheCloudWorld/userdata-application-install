#!/bin/bash
yum update -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum upgrade -y
sudo yum install java-11-amazon-corretto-headless
yum install jenkins -y
systemctl daemon-reload
systemctl enable jenkins
systemctl start jenkins
