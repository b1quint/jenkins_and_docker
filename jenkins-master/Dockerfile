FROM jenkinsci/blueocean
LABEL maintainer="bquint@gemini.edu"

# Custom variables set here
ARG agent_port=50000

# Enable agent port
ENV JENKINS_SLAVE_AGENT_PORT ${agent_port}

# Create folders for persistence
USER root
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins
USER jenkins

# Adding some performance options
ENV JAVA_OPTS='-Xmx8192m'   # 8 Gb RAM
ENV JENKINS_OPTS='--handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war'
