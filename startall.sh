#runall.sh
# Create Directotriies

mkdir -p $HOME/data/{tomcat,postgres,jenkins,nexus-data,pgadmin,sonar}

wget  http://www-us.apache.org/dist/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.zip -P $HOME/data/jenkins

unzip  $HOME/data/jenkins/apache-maven-3.5.3-bin.zip -d  $HOME/data/jenkins/


chmod -R 777 $HOME/data

#update older jenkins image, make sure it doesnt use cache

docker run -d -p 8080:8080  --name=jenkins  saurabhpathak21/myjenkins:1.2

docker-compose up -d

docker ps -a --filter=status=running  --format "{{.Names}}: {{.Ports}}"

sleep 5m # Waits 5 minutes.

cat $HOME/data/jenkins/secrets/initialAdminPassword > .JenkinsPassword

echo "NOTE: Please allow a couple of minutes for the  application to start."
