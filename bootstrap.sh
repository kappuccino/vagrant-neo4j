#!/usr/bin/env bash

sudo wget -O - http://debian.neo4j.org/neotechnology.gpg.key | apt-key add -
sudo echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list

# update apt
sudo apt-get update

# install java
sudo apt-get install neo4j

# install elasticsearch
#wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.4.deb
#sudo dpkg -i elasticsearch-1.3.4.deb
#sudo service elasticsearch start

# install head
#sudo /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head


