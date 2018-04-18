#runall.sh
# Create Directotriies
mkdir -p $HOME/data/{tomcat,postgres,jenkins,nexus-data,pgadmin,sonar}
chmod -R 755 $HOME/data/* # Access 

# Cool Down Everything #clean anything with same name to get rid of clashes

docker-compose down
#docker rm -f $(docker ps -a -q)

#update with actual password
#echo "password" > ./secrets/artifactoryPassword

#update older jenkins image, make sure it doesnt use cache
#docker-compose build --no-cache

#run all
docker-compose up 
docker ps -a --filter=status=running  --format "{{.Names}}: {{.Ports}}"

cat /$HOME/data/jenkins/secrets/initialAdminPassword > JenkinsPassword
