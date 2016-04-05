Instruction for buildmachine:

- install [virtualbox](https://www.virtualbox.org/wiki/Downloads), confirmed working on v5.0.14
- install [vagrant](https://www.vagrantup.com/downloads.html), confirmed working on v1.8.1
- run start.sh to create and start the pirateship build machine. when done, you will be inside the machine. (to get back in, run `vagrant ssh -c onboot.sh`)
- to build the image, from inside the build machine in the directory `/vagrant` run `./pirateship-image-creator --chroot`. when done you are in the pirateship build, not the build machine. 
- you will now find your built image inside the build machine at `/vagrant/temp` or on the outside at `temp`

Hint:
- start.sh is creating a Virtual Machine called `pirateship-buildmachine`
- `./pirateship-create-image --chroot` is after completion chroot'ing into the build image
- `/vagrant` in the buildmachine is the same as the root of the repository

