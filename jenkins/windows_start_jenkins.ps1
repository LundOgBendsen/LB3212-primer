# filename: windows_jenkins_start.ps1
# function: power shell script to start windows version of 'jenkinsci'
# usage:	Start power shell
#			run script
# Note:		Powershell started by administrator might work better...
# ----------------------------------------------------------------------------

#
# get path to current directory (where this script is located)
#
$DIR=(Get-Item -Path ".\" -Verbose).FullName

#
# make data directory where 'jenkinsci' should place configuration, jobs etc
# --------------------------------------------------------------------------
mkdir $DIR/data -Force


#
# get the latest image 
# --------------------------------------------------------------------------
docker pull jenkinsci/blueocean:latest


#
# delete previous 'jenkins' - when you run the command again
# --------------------------------------------------------------------------
docker container rm jenkins


#
# start docker container 
# --------------------------------------------------------------------------
echo "start docker jenkins ..."
docker run --name jenkins `
    --detach `
    --publish 8888:8080 `
    --volume $DIR/data:/var/jenkins_home `
    jenkinsci/blueocean:latest


