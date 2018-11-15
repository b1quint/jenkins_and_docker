# Jenkins and Docker
This repository contains the configuration files needed for an easy installation of Jenkins using Docker. 

## Requirements

- Docker installed and running
- Unix System (tested on Centos 7)

## Installing

You can simply execute the following commands:

```
$ mkdir jenkins
$ cd jenkins
$ git clone https://github.com/b1quint/jenkins_and_docker.git .
$ make build
$ make run
$ make log
```

This will show you the Jenkins log. Find the password needed for the initial setup and copy it. 
Then, open your browser and access the localhost page. It will request the password which you can simply paste. 

## More details

This repository was created based on [This Tutorial from Riot Games](https://engineering.riotgames.com/news/thinking-inside-container) (the same company that develops League of Legends!).

It contains a `makefile` that encapsulate the commands needed to build and run the docker containers where Jenkins will be installed. 

### build

  - Creates volumes for data persistence.
  - Creates network that connects Jenkins and NGINX.
  - Creates Docker images using the Dockerfiles inside `jenkins-master` and `jenkins-nginix`.
  
### run

  - Runs the `jenkins-master` image in a container.
  - Runs the `jenkins-nginx` image in a container.

### log
  
  - Prints Jenkins' log file (useful for initial configuration).


