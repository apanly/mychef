# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "myserver64"
  config.vm.box_url = "http://vagrant.corp.anjuke.com/boxes/precise64.box"

  config.vm.network :private_network, ip: "192.168.222.2"
  config.vm.network :forwarded_port, guest: 80, host: 80
  config.vm.synced_folder "{$PATH}", "/code", nfs: true, extra: 'dmode=755,fmode=755'

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe('aptitude')
    chef.add_recipe("anjukeinc")
    chef.add_recipe("broker")
    chef.add_recipe("member")
    chef.add_recipe("user")
    #chef.add_recipe("xinfang")
    #chef.add_recipe("paycenter")
    #chef.add_recipe("mendian")
    #chef.add_recipe("personal")
    #chef.add_recipe("cms")
  end
end
