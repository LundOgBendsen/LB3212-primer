#!/usr/bin/env bash
# filename: 	start_jenkins.sh
# function:		download and start jenkinsci
# Purpose:		Start Jenkins på server
# 				Kan også bruges på egen arbejdsstation
#
# Usage:		./start_jenkins.sh
#
# Sideeffect:	1) opretter directory "jenkins" i brugerens hjemmekatalog
#				2) henter Jenkins Docker
#				3) starter Jenkins dockeren med ønskede parametre.
# ----------------------------------------------------------------------------

#
# get the directory where this script is located in
#
cd
mkdir -pv jenkins
cd jenkins
#
# create 'data' directory where jenkins will place jobs etc.
DIR="$( pwd )"
echo "created variable DIR =" $DIR
#
mkdir -pv $DIR/data

#
# download the latest version of 'jenkinsci/blueocean'
#
docker pull jenkinsci/blueocean:latest

# stop eventuel kørende jenkins
docker stop jenkins

# delete previous 'jenkins'
docker container rm jenkins
#docker container prune -f

# run docker
echo "start docker jenkins ..."
docker run --name jenkins \
--detach \
--user root \
--publish 8888:8080 \
--volume $DIR/data:/var/jenkins_home \
--volume /var/run/docker.sock:/var/run/docker.sock \
--volume "$HOME":/home \
jenkinsci/blueocean:latest
#
echo "Venter lidt før initiel password vises ..."
sleep 30
echo "viser admin password (ingen fil betyder at systemet er initieret)"
cat $DIR/data/secrets/initialAdminPassword
#
echo "-----"
echo "open http://localhost:8888/  eller open http://course:8888/"