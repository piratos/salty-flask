# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Vagrant Box
  config.vm.box = "ubuntu/trusty64"

  # Network
  config.vm.network "private_network", ip: "55.55.55.5"

  # Salt Provisioner
  config.vm.provision :salt do |salt|
    # Relative location of configuration file to use for minion
    # since we need to tell our minion to run in masterless mode
    salt.minion_config = "saltstack/etc/minion"

    salt.run_highstate = true

    salt.install_type = "git"

    salt.verbose = true
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 1
  end
end
