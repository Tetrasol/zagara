# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define 'AnsibleMaster' do |aMaster|
    aMaster.vm.box = "ubuntu/trusty64"
    aMaster.vm.box_check_update = false
    aMaster.vm.network "private_network", ip: "192.168.33.10"
    aMaster.vm.network "public_network", ip: "192.168.0.120"
    aMaster.vm.synced_folder ".", "/home/vagrant/workspace"
    aMaster.vm.provision "shell", path: "init.sh"

    aMaster.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = '2'
    end
  end

  config.vm.define 'OpenStackCompute' do |computeOS|
    computeOS.vm.box = "ubuntu/trusty64"
    computeOS.vm.box_check_update = false
    computeOS.vm.network "private_network", ip: "192.168.33.10"
    computeOS.vm.network "public_network", ip: "192.168.0.121"

    computeOS.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = '2'
    end
  end

  config.vm.define 'OpenStackController' do |controllerOS|
    controllerOS.vm.box = "ubuntu/trusty64"
    controllerOS.vm.box_check_update = false
    controllerOS.vm.network "private_network", ip: "192.168.33.10"
    controllerOS.vm.network "public_network", ip: "192.168.0.122"

    controllerOS.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = '2'
    end
  end
end
