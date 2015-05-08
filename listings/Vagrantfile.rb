Vagrant.configure(2) do |config|

  config.vm.box = "WalternativE/django_base_box"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, host: 8000, guest: 8000

end
