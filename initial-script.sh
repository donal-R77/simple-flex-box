#!/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo chown root:docker /var/run/docker.sock
sudo chmod a+w /var/run/docker.sock

aws s3 cp s3://macdo-bucket/simple-app-flexbox/bash_test.sh /home/ec2-user/

chmod +x /home/ec2-user/bash_test.sh

export DOCKER_USERNAME='maric77'
export DOCKER_PASSWORD='Groovy@22_05;'

/home/ec2-user/bash_test.sh