
# Docker på Ubuntu

Nedenstående beskriver installation af Docker på Ubuntu

 

Bemærk at Ubuntu og Git skal være installeret først. Se: [Ubuntu og Git](ubuntu.md)

Bemærk at man ikke downloader noget fra Docker hjemmesiden, 
derimod anvendes **apt-get** installations værktøjet.  


Se Dockers hjemmeside: https://www.docker.com/docker-ubuntu - her beskrives nedenstående installation.

Start en shell "bash" - og kør

```
sudo apt-get update

#
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#
sudo apt-key fingerprint 0EBFCD88
    
#
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce

# køre uden at være root
# your-user == username som du kører under
sudo usermod -aG docker your-user   

# log ud og ind   
```

Når ovenstående er gennemført vil det være muligt at køre docker som dig selv (ikke root) 



## Check Docker


```
docker run hello-world 

```

Herefter kan vi lave testen af docker, som er beskrevet [fælles for alle platforme](docker.md). 


