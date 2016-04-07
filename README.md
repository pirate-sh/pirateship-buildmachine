## Instruction to buildmachine:

This will create a customized OS image for the [Raspberry Pi](https://www.raspberrypi.org/) based on [Raspian Jessie Lite](https://www.raspberrypi.org/downloads/raspbian/).

There are 3 "machines" you will be working with
- *Host* = Your computer
- *Build Machine* = Virtual Box machine
- *Build* = Simulated Raspberry Pi

## Requirements
- install [virtualbox](https://www.virtualbox.org/wiki/Downloads)
  - confirmed working on v5.0.14 (check with `vboxmanage --version`)
- install [vagrant](https://www.vagrantup.com/downloads.html)
  - confirmed working on v1.8.1 (check with `vagrant --version`)

### Ubuntu

    sudo apt-get install virtualbox
    sudo apt-get install vagrant

### OSX
    brew install vagrant
    brew cask install virtualbox

## Install

To create and start the _Build Machine_ called `pirateship-buildmachine`, simply:
 
    git clone git@github.com:pirate-sh/pirateship-buildmachine.git
    cd pirateship-buildmachine
    ./start.sh
    
- when done, you will be inside the *Build Machine*.
  - typing `exit` will bring you back to the *Host*. To get back into the *Build Machine* run `vagrant ssh -c onboot.sh`
- to create the *Build* image, from inside the *Build Machine* in the directory `/vagrant` run `./pirateship-image-creator --chroot`
  - when done you are in the pirateship *Build* 


## Use
- If you stay inside the *Build* you can manually modify the image
- `exit` will bring you back to the *Build Machine*
- you will now find your *Build* image inside the *Build Machine* at `/vagrant/temp` or in the *Host* at `temp`

## Hint:
- the git repository on the *Host* is mounted at `/vagrant` in the *Build Machine*
