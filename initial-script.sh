#!/usr/bin
sudo yum update -y
sudo yum install docker -y
sudo chown root:docker /var/run/docker.sock
sudo chmod a+w /var/run/docker.sock

aws s3 cp s3://macdo-bucket/simple-app-flexbox/bash_test.sh .

chmod a+x *.sh
export DOCKER_USERNAME='maric77'
export DOCKER_PASSWORD='Groovy@22_05;'
. bash_test.sh 