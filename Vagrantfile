# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"

  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.hostname = "grunt"

  config.vm.network :private_network, ip: "192.168.200.10"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "./cookbooks"
    chef.add_recipe "ubuntu"
    chef.add_recipe "apt"
    chef.add_recipe "git"
    chef.add_recipe "vim"
    chef.add_recipe "zsh"
    chef.add_recipe "apache2"
    chef.add_recipe "apache2::mod_rewrite"
    chef.add_recipe "apache2::mod_php5"
    chef.json = {
      apache: {
        default_site_enabled: true
      }
    }
  end
  config.berkshelf.enabled = true
  config.vm.provision :shell :path => install.sh
end
