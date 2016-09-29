# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

# config.vm.synced_folder
# config.vm.network

  config.vm.define 'OpenStackCompute' do |osCompute|
    osCompute.vm.box = 'ubuntu/trusty64'
    osCompute.vm.hostname = 'compute'

    osCompute.vm.network :private_network, ip: '10.7.20.31', netmask: '255.255.255.0'

    osCompute.vm.provider :virtualbox do |vb|
      vb.name = 'osCompute'

      # 'disk id' eq UUID  --resize 'size in megabytes' 16384
      # vb.customize ['modifyhd', :id, '--resize', '8192']
      vb.memory = '4096'
      vb.cpus = '2'

      # #
      # # Run Ansible from the Vagrant Host
      # #
      # config.vm.provision "ansible" do |ansible|
      #   ansible.playbook = "playbook.yml"
      # end
    end
  end

  # OpenStack Controller VM
  config.vm.define 'OpenStackController' do |osController|
    osController.vm.box = 'ubuntu/trusty64'
    osController.vm.hostname = 'controller'

    #osController.vm.network :forwarded_port, guest: 8000, host: 8000
    osController.vm.network :private_network, ip: '10.7.20.11', netmask: '255.255.255.0'

    osController.vm.provider :virtualbox do |vb|
      vb.name = 'osController'

      # 'disk id' eq UUID  --resize 'size in megabytes' 16384
      # vb.customize ['modifyhd', :id, '--resize', '8192']
      vb.memory = '4096'
      vb.cpus = '2'
    end

    # #
    # # Run Ansible from the Vagrant Host
    # #
    # config.vm.provision "ansible" do |ansible|
    #   ansible.playbook = "playbook.yml"
    # end
  end
end
