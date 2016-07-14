#!/usr/bin/env bash

[ $(id -u) -ne 0 ] && { echo "Need to be root to run the script."; exit 1; }

uid=$(id -u)
gid=$(id -g)


# apt-get install build-essential linux-headers-`uname -r` dkms
# modprobe -a vboxguest vboxsf

/opt/VBoxGuestAdditions-*/init/vboxadd start
mount -t vboxsf -o uid=$uid, gid=$gid vagrant /vagrant
