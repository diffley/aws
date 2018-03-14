# https://linode.com/docs/applications/remote-desktop/install-vnc-on-ubuntu-16-04/
# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-16-04

apt-get update -y
apt-get upgrade -y
apt-get install -y ubuntu-desktop gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal
apt-get install -y vnc4server

# need to figure out how to do this automatically to include password setting, etc
# adduser difflch
# usermod -aG sudo difflch
# su - difflch
# vncpasswd
# vncserver
# vncserver -kill :%i
# crontab -e
# add @reboot /usr/bin/vncserver :%i
# exit
# repeat for other users


# GUAC
# https://linode.com/docs/applications/remote-desktop/remote-desktop-using-apache-guacamole-on-docker/

# Docker CE
# https://docs.docker.com/install/linux/docker-ce/centos/#set-up-the-repository
# guacPass
