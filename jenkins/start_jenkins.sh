#!/usr/bin/env bash
# filename: 	start_jenkins.sh
# function:		download and start jenkinsci
# ----------------------------------------------------------------------------

#
# get the directory where this script is located in
#
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR

#
# create 'data' directory where jenkins will place jobs etc.
#
mkdir -pv $DIR/data

#
# download the latest version of 'jenkinsci/blueocean'
#
docker pull jenkinsci/blueocean:latest


#
# delete previous 'jenkins'
docker container rm jenkins
#docker container prune -f

#
# run docker 
echo "start docker jenkins ..."
docker run --name jenkins \
--detach \
--publish 8888:8080 \
--volume $DIR/data:/var/jenkins_home \
jenkinsci/blueocean:latest
#