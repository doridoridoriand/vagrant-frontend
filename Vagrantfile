# -*- mode: ruby -*-
# vi: set ft=ruby :

environment = `uname -s`

if    environment.include?('Darwin')
  cpus   = `system_profiler SPHardwareDataType | grep "Total Number of Cores"`.delete("^0-9").to_i
  # メモリがGB表示
  memory = `system_profiler SPHardwareDataType | grep "Memory"`.delete("^0-9").to_i / 4 * 1024
elsif environment.include?('Linux')
  cpus   = `cat /proc/cpuinfo | grep processor | wc -l`.to_i / 4
  # メモリがKB表示
  memory = `cat /proc/meminfo | grep MemTotal`.delete("^0-9").to_i / 4 / 1024
end

Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network :private_network, ip: "192.168.56.10"

  config.vm.synced_folder "./workspace", "/home/vagrant/workspace"

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = memory
    vb.cpus   = cpus
  end

  # ほんとはAnsibleのみで完結するようにしたかったがVM側にPythonが入っていなかったので最低限入れる
  config.vm.provision 'shell', path: './provision/init.sh'

  config.vm.provision 'ansible' do |ansible|
    ansible.playbook = './provision/main.yml'
  end

end
