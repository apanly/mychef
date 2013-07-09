# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "myserver64"
  config.vm.box_url = "http://vagrant.corp.anjuke.com/boxes/precise64.box"

  config.vm.network :private_network, ip: "192.168.222.2"

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe('aptitude')
#    chef.add_recipe("anjukeinc")
  end
end
