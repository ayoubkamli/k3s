# sudo -i
yum update
yum install -y curl
# export K3S_TOKEN_FILE=/vagrant_shared/token
# export K3S_URL=https://192.168.42.110:6443
# export INSTALL_K3S_EXEC="--flannel-iface=eth1"
echo "-----> token <-----"
cat /vagrant_shared/token
echo "--------------------"
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--flannel-iface eth1" K3S_KUBECONFIG_MODE="644" K3S_URL="https://192.168.42.110:6443" K3S_TOKEN_FILE="/vagrant_shared/token" sh -
# curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
# echo "$(<kubectl.sha256)  kubectl" | sha256sum --check
# sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
