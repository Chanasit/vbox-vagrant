# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

  arch node 01
  config.vm.define "node01" do |node01|
    node01.vm.box = "generic/arch"
    node01.vm.box_version = "4.2.16"
    node01.vm.hostname = 'node01'
    node01.vm.network :private_network, ip: "192.168.56.101"
    node01.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "node01"]
      v.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
    end
    # node01.vm.provision "shell", inline: <<-SHELL
    #   yes | sudo pacman -Sy git docker docker-compose
    #   sudo systemctl enable docker.service --now
    # SHELL
  end

  # arch node 02
  config.vm.define "node02" do |node02|
    node02.vm.box = "generic/arch"
    node02.vm.box_version = "4.2.16"
    node02.vm.hostname = 'node02'
    node02.vm.network :private_network, ip: "192.168.56.102"
    node02.vm.provider :virtualbox do |v|
      v.name = "node02"
      v.cpus = 1
      v.memory = 1024
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--cpuexecutioncap", "60"]
      v.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
    end
    # node01.vm.provision "shell", inline: <<-SHELL
    #   yes | sudo pacman -Sy git docker docker-compose
    #   sudo systemctl enable docker.service --now
    # SHELL
  end
end
