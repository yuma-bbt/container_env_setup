sudo apt-get update
wget https://raw.githubusercontent.com/openvswitch/ovs/master/utilities/ovs-docker
chmod +x ovs-docker
sudo cp ovs-docker /user/local/sbin/
sudo apt-get install  linux-image-extra-$(uname -r)  linux-image-extra-virtual  -y
sudo apt-get install  apt-transport-https  ca-certificates  curl software-properties-common  -y 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
curl -fsSL <DOCKER-EE-URL>/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
sudo apt-get update 
sudo apt-get install docker-ce -y
sudo apt-get install docker-ee -y 

