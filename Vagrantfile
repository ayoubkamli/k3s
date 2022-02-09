# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provision "shell", path: "bootstrap.sh"

  config.vm.define "akamliS" do |s|
    s.vm.box = "generic/centos7"
    s.vm.hostname = "akamliS"
    s.vm.synced_folder "./shared", "/vagrant_shared"
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end
  end

  config.vm.define "akamliSW" do |w|
    w.vm.box = "generic/centos7"
    w.vm.hostname = "akamliS"
    w.vm.synced_folder "./shared", "/vagrant_shared"
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end
  end
end
