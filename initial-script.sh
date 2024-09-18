#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |
    sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
  sudo apt-get update -y

  sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  sudo chown root:docker /var/run/docker.sock
  sudo chmod a+w /var/run/docker.sock

aws s3 cp s3://macdo-bucket/simple-app-flexbox/bash_test.sh /home/ec2-user/

chmod +x /home/ec2-user/bash_test.sh

export DOCKER_USERNAME='maric77'
export DOCKER_PASSWORD='Groovy@22_05;'

/home/ec2-user/bash_test.sh