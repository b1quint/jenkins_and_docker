# Jenkins and Docker
This repository contains the configuration files needed for an easy installation of Jenkins using Docker. 

## Requirements

- Docker installed and running
- Unix System (tested on Centos 7)

## Installing

```
$ git clone 
$ cd ...
$ make build 
$ docker exec jenkins-master cat /var/log/jenkins/jenkins.log
```

This will show you the Jenkins log. Find the password needed for the initial setup and copy it. 
Then, open your browser and access the localhost page. It will request the password which you can simply paste. 

[TBD]
