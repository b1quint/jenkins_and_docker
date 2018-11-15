FROM jenkinsci/blueocean
LABEL maintainer="bquint@gemini.edu"

ARG agent_port=50000

ENV JENKINS_SLAVE_AGENT_PORT ${agent_port}

USER root
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins
USER jenkins

ENV JAVA_OPTS='-Xmx8192m'
ENV JENKINS_OPTS='--handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war'
