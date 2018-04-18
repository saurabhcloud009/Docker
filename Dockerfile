FROM saurabhpathak21/myjenkins:1.2

MAINTAINER Saurabh Pathak

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

#VOLUME /var/jenkins_home
RUN mkdir -p /var/jenkins_home

#COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

