# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/precise64"
  config.vm.network :private_network, ip: "192.168.33.10"

  condig.vm.synced_folder = "./workspace", "/home/vagrant/workspace"

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end

end
