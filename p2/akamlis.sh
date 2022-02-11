
yum update
yum install curl
firewall-cmd --permanent --add-port=6443/tcp
firewall-cmd --permanent --add-port=6443/udp
firewall-cmd --reload
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--flannel-iface eth1" K3S_KUBECONFIG_MODE="644" sh -
sleep 20

while true
    do
        kubectl get nodes | grep -q 'NotReady'
        if [ $? == 0 ]; then
            echo "NOOOOT RDY"
        else
            echo "DEPLOYING APPS"
            kubectl apply -f /vagrant_shared/conf
            break
        fi
        sleep 1
    done
    SHELL