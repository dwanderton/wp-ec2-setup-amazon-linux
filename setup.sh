#!/bin/bash
# Simple setup.sh for configuring Amazon Linux AMI 2013 instance
# for headless setup. 

# Install basic tools
sudo yum install -y git
sudo yum install -y curl

# Install ftp abilities
sudo yum install -y vsftpd

# git pull and install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi

git clone https://github.com/dwanderton/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .

sudo yum install -y httpd
sudo service httpd start
sudo yum install -y php php-mysql php-xml
cd /var/www/html
sudo yum install -y mysql-server
sudo service mysqld start
sudo service httpd restart
sudo mysqladmin -uroot create maindb
mysql_secure_installation

# download and instal wp and give permissions to apache
wget http://wordpress.org/latest.tar.gz
sudo tar -xzvf latest.tar.gz
cd wordpress
sudo mv wp-config-sample.php wp-config.php
sudo chown -R  apache /var/www/html/





sudo vi wp-config.php
sudo service httpd restart
sudo chown -R apache /var/www/html/
