yum -y install wget
wget https://get.docker.com/builds/Linux/x86_64/docker-latest -O docker
chmod +x docker
mv docker /usr/bin/docker
wget https://raw.githubusercontent.com/docker/docker/master/contrib/init/systemd/docker.socket -O /etc/systemd/system/docker.socket
wget https://raw.githubusercontent.com/docker/docker/master/contrib/init/systemd/docker.service -O /etc/systemd/system/docker.service
systemctl daemon-reload
systemctl start docker.service
systemctl enable docker.service
