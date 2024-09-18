#!/bin/bash
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo systemctl enable docker
sudo chown root:docker /var/run/docker.sock
sudo chmod a+w /var/run/docker.sock

if ! command -v aws &> /dev/null
then
    sudo apt-get install -y awscli
fi

aws s3 cp s3://macdo-bucket/simple-app-flexbox/bash_test.sh /home/ubuntu/

chmod +x /home/ubuntu/bash_test.sh

export DOCKER_USERNAME='maric77'
export DOCKER_PASSWORD='Groovy@22_05;'

/home/ec2-user/bash_test.sh