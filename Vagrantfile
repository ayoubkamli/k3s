# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  

  config.vm.define "akamliS" do |s|
    s.vm.box = "generic/centos7"
    s.vm.hostname = "akamliS"
    s.vm.network "private_network", ip: "192.168.42.110"
    s.vm.synced_folder "./shared", "/vagrant_shared"
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end
    s.vm.provision "shell", path: "akamlis.sh"
  end

  config.vm.define "akamliSW" do |w|
    w.vm.box = "generic/centos7"
    w.vm.hostname = "akamliSW"
    w.vm.network "private_network", ip: "192.168.42.111"
    w.vm.synced_folder  "./shared", "/vagrant_shared"
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end
    w.vm.provision "shell", path: "akamlisw.sh"
  end
end
