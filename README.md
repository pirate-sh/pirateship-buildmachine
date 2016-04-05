Instruction for buildmachine:

- install [virtualbox](https://www.virtualbox.org/wiki/Downloads), confirmed working on v5.0.14
- install [vagrant](https://www.vagrantup.com/downloads.html), confirmed working on v1.8.1
- run start.sh to create and start the pirateship build machine. when done, you will be inside the machine. (to get back in, run `vagrant ssh -c onboot.sh`)
- to build the image, from inside the build machine run `/vagrant/pirateship-image-creator --chroot`. when done you are in the pirateship build, not the build machine. 
- you will now find your built image inside the build machine at `/vagrant/temp`

