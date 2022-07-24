#!/bin/bash


sudo docker stop $(sudo docker ps -aqf "ancestor=chrissy-website")
sudo docker rm $(sudo docker ps -aqf "ancestor=chrissy-website")
sudo docker build -t chrissy-website .  
sudo docker run -p 127.0.0.1:9998:80 -d chrissy-website 

echo "new IP Adress:"
container_id=$(sudo docker ps -aqf "ancestor=chrissy-website")
sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $container_id


