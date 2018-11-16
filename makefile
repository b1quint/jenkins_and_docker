build:
	@docker build -t my-jenkins-image jenkins-master/.
	@docker build -t my-nginx-image jenkins-nginx/.
	@docker network create --driver bridge jenkins-net
	@docker volume create jenkins-log
	@docker volume create jenkins-data
run:
	@docker run -d -p 8080:8080 -p 50000:50000 --name=jenkins-master \
		--network jenkins-net \
		--mount source=jenkins-log,target=/var/log/jenkins \
		--mount source=jenkins-data,target=/var/jenkins_home \
		my-jenkins-image
	@docker run -d -p 80:80 --name=jenkins-nginx \
		--network jenkins-net \
		my-nginx-image
start:
	@docker start jenkins-master
	@docker start jenkins-nginx
stop:
	@docker stop jenkins-master
	@docker stop jenkins-nginx
clean:
	@docker rm -v jenkins-master
	@docker rm -v jenkins-nginx
wipe:
    @docker image rm my-jenkins-image
    @docker image rm my-nginx-image
    @docker network rm jenkins-net
    @docker volume rm jenkins-log
    @docker volume rm jenkins-data
log:
	@docker exec jenkins-master cat /var/log/jenkins/jenkins.log 
