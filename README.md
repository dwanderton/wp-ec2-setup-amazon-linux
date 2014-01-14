wp-ec2-setup-amazon-linux setup.git
==================================
Clone and run this on a new EC2 instance running Amazon Linux AMI 2013 to
configure both the machine and your individual development environment as
follows:

```sh
cd $HOME
sudo yum install -y git-core
git clone https://github.com/dwanderton/setup.git
./setup/setup.sh   
```

See also http://github.com/dwanderton/dotfiles and
[Startup Engineering Video Lectures 4a/4b](https://class.coursera.org/startup-001/lecture/index)
for more details.


