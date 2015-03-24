# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "shell", inline: <<-SHELL
    sudo sed -i s/archive.ubuntu.com/ftp.jaist.ac.jp/ /etc/apt/sources.list
    sudo apt-get update
    sudo apt-get install -y curl
    curl -sSL https://get.docker.com/ubuntu/ | sudo sh
    sudo docker pull bsmile/consul-handson
    sudo ufw -f enable
    sudo ufw allow 22/tcp
    sudo ufw allow 8500/tcp
    sudo ufw allow 10080/tcp
    sudo ufw allow proto tcp from 172.17.0.0/16 to any port 2375
    sudo /bin/su -c 'echo DOCKER_OPTS=\\"-H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock --dns 8.8.8.8\\" >> /etc/default/docker'
    sudo service docker restart
  SHELL
end
