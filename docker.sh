sudo aptitude install openvswitch-common openvswitch-switch
sudo docker run -d --name router1 --net=none --privileged -v /lib/modules:/lib/modules kurochan/vyos:1.1.6 /sbin/init
sudo docker run -d --name router2 --net=none --privileged -v /lib/modules:/lib/modules kurochan/vyos:1.1.6 /sbin/init
sudo docker run -d --name router3 --net=none --privileged -v /lib/modules:/lib/modules kurochan/vyos:1.1.6 /sbin/init
sudo docker run -d --name router4 --net=none --privileged -v /lib/modules:/lib/modules kurochan/vyos:1.1.6 /sbin/init
sudo docker ps
sudo ovs-vsctl add-br switch1
sudo ovs-vsctl add-br switch2
sudo ovs-vsctl add-br switch3
sudo ovs-vsctl add-br switch4
sudo ovs-docker add-port switch1 eth0 router1 --ipaddress=10.0.1.1/24
sudo ovs-docker add-port switch2 eth1 router1 --ipaddress=10.0.2.1/24
sudo ovs-docker add-port switch1 eth0 router2 --ipaddress=10.0.1.2/24
sudo ovs-docker add-port switch3 eth1 router2 --ipaddress=10.0.3.1/24
sudo ovs-docker add-port switch2 eth0 router3 --ipaddress=10.0.2.2/24
sudo ovs-docker add-port switch4 eth1 router3 --ipaddress=10.0.4.1/24
sudo ovs-docker add-port switch3 eth0 router4 --ipaddress=10.0.3.2/24
sudo ovs-docker add-port switch4 eth1 router4 --ipaddress=10.0.4.2/24
