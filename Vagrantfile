# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "bento/centos-6.7"
  config.vm.box_url = "https://atlas.hashicorp.com/bento/centos-6.7"

  config.vm.synced_folder "../", "/home/vagrant/seventeen"

  config.vm.network :forwarded_port, host: 80, guest: 80, auto_correct: true # website

  # Agent forwarding over SSH connections
  config.ssh.forward_agent = true
  config.ssh.insert_key = false

  config.vm.boot_timeout = 600

  config.vm.define :api do |web|
    web.vm.network :private_network, ip: "192.168.33.10"
  end

  config.vbguest.auto_update  = false if Vagrant.has_plugin?('vagrant-vbguest')

end
