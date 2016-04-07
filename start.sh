#!/bin/bash

IMAGE=http://downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2016-03-18/2016-03-18-raspbian-jessie-lite.zip

if [[ ! -x $(which vagrant) ]]; then
    echo "vagrant must be installed"
    exit 1
fi

if [[ ! -x $(which VBox) ]]; then
    echo "VirtualBox must be installed"
    exit 1
fi

wget --directory-prefix download -c $IMAGE

vagrant up
vagrant ssh -c /vagrant/onboot.sh
