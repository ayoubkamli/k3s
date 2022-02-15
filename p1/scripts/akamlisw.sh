
yum update
yum install -y curl
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--flannel-iface eth1" K3S_KUBECONFIG_MODE="644" K3S_URL="https://192.168.42.110:6443" K3S_TOKEN_FILE="/vagrant_shared/token" sh -

