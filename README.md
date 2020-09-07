# flash-docker
Ubuntu 18.04 with flash installed

The image contains a full install of [minia](https://github.com/GATB/minia), including all necessary dependencies. I am not part of the developer team - I just made this image.


In detail, the image is set up with:
 - Ubuntu 18.04
 - minia 3.2.4

To run software you can do the following (this will mount the directory `/in` of the container to the current working directory on your local machine, and allow you to access files in this directory and any sub-directories):
```bash
$ docker run --rm -v $(pwd):/in -w /in chrishah/minia:3.2.4 minia -h
```

You can also enter the container environment and work within it. All executables should be in the `PATH`.
```bash
$ docker run -it --rm -v $(pwd):/in -w /in chrishah/minia:3.2.4 /bin/bash
```

