#!/bin/bash

cd /vagrant
clear
echo "Run:"
echo "./pirateship-image-creator --chroot"
echo "-> that will take some time ;)"
echo ""
echo "after you will be in the mounted modified raspbian image"
echo "with CTRL-D you will be root in the vagrantVM"
echo "an other CTRL-D switches to vagrant user in the vagrantVM"
echo "last CRTL-D bring you back to your OS"
echo ""
echo "there in the directory temp you will find the modified image"
sudo -s
