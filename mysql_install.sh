#!/bin/bash
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password sample_password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password sample_password'
apt-get install -yqq mysql-server