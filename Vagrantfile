Vagrant.configure("2") do |config|

  # Configurations from 1.0.x can be placed in Vagrant 1.1.x specs like the following.
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", 512]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.ssh.forward_agent = true
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "neo4j"

  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 7474, host: 7474
  #config.vm.network :private_network, ip: "192.168.50.7"


end
