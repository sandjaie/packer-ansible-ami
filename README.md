### running jenkins in a container

### docker build . -t jenkins/jenkins:with_plugins

### docker run -p 8080:8080 -p 50000:50000 --name jenkins_with_plugins -v /data/jenkins/jenkins:/var/jenkins_home jenkins/jenkins:with_plugins

plugins.txt has the list of plugins that gets installed during the runtime. 

'/data/jenkins/jenkins' can be replaced with the directory on the host machine
