#!/bin/bash

#vagrant -h || die echo "please install vagrant: http://vagrantup.com""


mkdir -p download
cd download
wget -c http://director.downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2016-03-18/2016-03-18-raspbian-jessie-lite.zip

vagrant up
vagrant ssh -c /vagrant/onboot.sh
