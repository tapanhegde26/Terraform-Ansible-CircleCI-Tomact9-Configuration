#!/bin/bash
sudo dnf install wget unzip vim -y
cd /opt/
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.54/bin/apache-tomcat-9.0.54.zip
sudo unzip apache-tomcat-9.0.54.zip
sudo ln -s /opt/apache-tomcat-* /opt/tomcat
sudo mkdir /var/log/tomcat
sudo rmdir /opt/tomcat/logs
sudo ln -s /var/log/tomcat /opt/tomcat/logs
sudo useradd tomcat
sudo chown -R tomcat:tomcat /opt/apache-tomcat-*
sudo chown -R tomcat:tomcat /var/log/tomcat
sudo chmod +x /opt/tomcat/bin/*.sh

