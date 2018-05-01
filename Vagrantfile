# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.synced_folder "./workspace", "/home/ubuntu/workspace"

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = 4096
    vb.cpus = 2
  end

  # ほんとはAnsibleのみで完結するようにしたかったがVM側にPythonが入っていなかったので最低限入れる
  config.vm.provision 'shell', path: './provision/init.sh'

  config.vm.provision 'ansible' do |ansible|
    ansible.playbook = './provision/main.yml'
  end

end
