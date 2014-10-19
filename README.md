Set up Wordpress on Amazon AMI EC2 
==================================

This is my little bash script to remove the pain of setting up an instance and installing wordpress.

Clone and run this on a new EC2 instance running Amazon Linux AMI 2013 to
configure both the machine and your individual development environment as
follows:

```sh
cd $HOME
sudo yum install -y git-core
git clone https://github.com/dwanderton/wp-ec2-setup-amazon-linux.git
sudo bash ./wp-ec2-setup-amazon-linux/setup.sh   
```

See also http://github.com/dwanderton/dotfiles and
[Startup Engineering Video Lectures 4a/4b](https://class.coursera.org/startup-001/lecture/index)
for more details.


To-do list
==========


>include add table username and root db pw to config
>include increase upload_max_filesize directive in php.ini.
>ask user to choose keep in wordpress folder [1] rename folder [2] or put in root html dir [3]
>edit /etc/php.ini to have a 20mb file upload size limit
>edit apache httpd.conf to allow for pretty permalinks  httpd.conf AllowOverride All
>KeepAlive On
>Compression/gzip on
