# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provision "shell", path: "bootstrap.sh"

  config.vm.define "akamliS" do |s|
    s.vm.box = "centos/8"
  end

  config.vm.define "akamliSW" do |w|
    w.vm.box = "centos/8"
  end

  # config.vm.box = "centos/8"
  # config.vm.provider "virtualBox"
  # consig.vm.define "akamliS" 
  # config.vm.provision :shell, path: "bootstrap.sh"
end
