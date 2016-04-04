#!/bin/bash

vagrant halt
vagrant destroy --force
rm -rf .vagrant
rm -rf temp
rm -rf mnt
