# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |provider, override|
    provider.name = "apt-mirror-server"
    override.vm.box = "tl_debian_jessie_64bit_2tb"  
    override.vm.box_url = "https://s3-us-west-1.amazonaws.com/terminal-labs-vagrant-boxes/tl_debian_jessie_64bit_2tb.box"
    
    # setup paravirtualized network provider.customize
    provider.customize ['modifyvm', :id, '--nictype1', 'virtio'] 
  end

  config.vm.network :forwarded_port, :guest => 8001, :host => 8001, auto_correct: true
  config.vm.network :forwarded_port, :guest => 8002, :host => 8002, auto_correct: true
  config.vm.network :forwarded_port, :guest => 80, :host => 8080, auto_correct: true
  
  config.vm.network "private_network", type: "dhcp"
end
