sudo -i
yum update
yum install curl
export INSTALL_K3S_EXEC="--bind-address=192.168.42.110 --node-external-ip=192.168.42.110 --flannel-iface=eth1"
curl -sfL https://get.k3s.io | sh
sleep 5
cp /var/lib/rancher/k3s/server/token /vagrant_shared
cp /etc/rancher/k3s/k3s.yaml /vagrant_shared
curl -sfL https://get.k3s.io | sh
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
