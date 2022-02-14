
yum update -y
yum install curl
firewall-cmd --permanent --add-port=6443/tcp
firewall-cmd --permanent --add-port=6443/udp
firewall-cmd --permanent --add-port=8080/tcp
firewall-cmd --permanent --add-port=8080/udp
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --reload
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--flannel-iface eth1" K3S_KUBECONFIG_MODE="644" sh -
cp /var/lib/rancher/k3s/server/token /vagrant_shared

