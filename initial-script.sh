#!/bin/bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update

  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  sudo chown root:docker /var/run/docker.sock
  sudo chmod a+w /var/run/docker.sock

aws s3 cp s3://macdo-bucket/simple-app-flexbox/bash_test.sh /home/ubuntu/

chmod +x /home/ubuntu/bash_test.sh

export DOCKER_USERNAME='maric77'
export DOCKER_PASSWORD='Groovy@22_05;'

/home/ec2-user/bash_test.sh