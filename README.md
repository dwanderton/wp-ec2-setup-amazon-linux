wp-ec2-setup-amazon-linux setup.git
==================================
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


To-do 

include add table username and root db pw to config
include increase upload_max_filesize directive in php.ini.
