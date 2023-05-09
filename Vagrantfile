Vagrant.configure("2") do |config|
    config.vm.box = "generic/alpine38"
    config.vm.hostname = "monitoring"
    
    config.vm.network "private_network", ip: "192.168.33.10"
  
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
  
    config.vm.provision "shell", path: "scripts/install-prometheus.sh"
  end  