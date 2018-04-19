#Remove All

rm -rf  $HOME/data

# Cool Down Everything #clean anything with same name to get rid of clashes

docker-compose down

docker rm -f $(docker ps -a -q)

