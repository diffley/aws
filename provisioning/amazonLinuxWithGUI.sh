#! /bin/bash

# Update & enable EPEL
yum -y update
yum -y install epel-release
yum-config-manager --enable epel

# Install Desktop group
# yum group install "Desktop"
# Centos
yum group install "GNOME Desktop"

# Install TigerVNC Server & xRDP.
yum install -y xrdp tigervnc-server xorg-x11-fonts-Type1

# Add Remote user

# Start xrdp
service xrdp start
chcon -h system_u:object_r:bin_t:s0 /usr/sbin/xrdp
chcon -h system_u:object_r:bin_t:s0 /usr/sbin/xrdp-sesman
chkconfig xrdp on

# ...not done


# https://aws.amazon.com/premiumsupport/knowledge-center/connect-to-rhel-73-windows/
# https://www.itzgeek.com/how-tos/linux/centos-how-tos/install-xrdp-on-centos-7-rhel-7.html
# http://bencane.com/2012/01/19/cheat-sheet-systemctl-vs-chkconfig/
# https://devopscube.com/setup-gui-for-amazon-ec2-linux/