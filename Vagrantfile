# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.synced_folder "./workspace", "/home/vagrant/workspace"

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end

  config.vm.provision 'ansible' do |ansible|
    ansible.playbook = './provision/main.yml'
  end

end
