# Trying to build a dockerized O2 MultiNode QC setup

The initial idea was to build a base image with a complete O2PDPSuite installation, that could be used to create different containers to simulate a multinode qc setup, e.g. 

- container 1 to simulate EPN1 doing QC tasks
- container 2 to simulate EPN2 doing QC tasks
- container 3 to simulate a QC merger machine

> But for the moment that's going nowhere as it's just too big : on my Mac the Docker internal disk image of 64 GB is not enough to get `aliBuild --defaults o2 build O2PDPSuite` to end without filling up all of it...
 
Nevertheless, the "recipe" to try it is : 

- cp docker-o2-qc.module $HOME/privatemodules/docker-o2-qc
- module load docker-o2-qc
- o2dock_init creates the base images and the `vc_o2dock_sw` volume that contains `/alice/sw`
- o2dock_enter and launch  `cd /alice ; aliBuild --defaults o2 build O2PDPSuite` 


