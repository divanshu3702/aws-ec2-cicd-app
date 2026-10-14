# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
sudo docker run hello-world
mkdir -p ~/aws-ec2-cicd/app
cd ~/aws-ec2-cicd
nano app/server.js
nano app/package.json
mkdir -p app/test
nano app/test/app.test.js
cd app
npm install --package-lock-only
sudo apt install npm
npm install --package-lock-only
npm test
cd ..
nano Dockerfile
nano .dockerignore
cd aws-ec2-cicd/
ls
cd
cd aws-ec2-cicd-app
cd aws-ec2-cicd
cd app
ls
nano sonar-project.propertiesnano sonar-project.propertiesnano sonar-project.propertiesnano sonar-project.propertiesnano sonar-project.propertiesnano sonar-project.properties
nano sonar-project.properties
docker build -t aws-ec2-cicd-app:local .
docker run -d --name cicd-test -p 3000:3000 aws-ec2-cicd-app:local
curl http://localhost:3000/health
docker rm -f cicd-test
sudo systemctl status docker
sudo docker ps
cd aws-ec2-cicd/
cd ap
cd app
sudo systemctl status docker
sudo groupadd docker
docker ps
docker ps
docker build -t aws-ec2-cicd-app:local .

ls
docker build -t aws-ec2-cicd-app:local .
docker run -d --name cicd-test -p 3000:3000 aws-ec2-cicd-app:local
docker ps
curl http://localhost:3000/health
docker rm -f cicd-test
sudo usermod -aG docker $USER
newgrp docker
