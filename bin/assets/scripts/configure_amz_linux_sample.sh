#!/bin/bash -xe
#install os packages

yum update -y
yum groupinstall -y "Development Tools"
amazon-linux-extras install -y nginx1
yum install -y nginx python3.11 python3.11-pip python3.11-deve1 ruby wget
python3.11 -m pip install pipenv wheel
python3.11 -m pip install uwsgi


#code deploy agent
cd /home/ec2-user
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
./install auto