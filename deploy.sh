#!/bin/bash


sudo docker stop $(sudo docker ps -aqf "ancestor=chrissy-website")
sudo docker rm $(sudo docker ps -aqf "ancestor=chrissy-website")
sudo docker build -t chrissy-website .  
sudo docker run -p 127.0.0.1:9998:80 -d chrissy-website 

