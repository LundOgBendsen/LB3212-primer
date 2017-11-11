# Docker

Når vi bruger "micro-services" er det vigtigt at kunne installere og afvikle de enkelte services hver for sig. 
Derfor bruger vi Docker i dette kursus.
Vi skal både installere programmet og have en konto bruger konto på dockerhub.

https://www.docker.com

Docker muliggør unix (linux) runtime servere på samme maskine. 
Oprindeligt skulle man fra Macosx og Windows installere en virtuel maskine som f.eks VirtualBox og 
køre docker serverne inde under den virtuelle maskine. Nu er VM'en bygget ind i "docker" - så 
det er ikke længere nødvendig.

## Installation af software

* https://www.docker.com/docker-ubuntu
* https://www.docker.com/docker-mac
* https://www.docker.com/docker-windows - (se detaljer nedenfor)


Installer docker og kør
```
docker run hello-world
docker ps -a

```

Spørgsmål: 
* Hvad laver kommandoen "docker ps" ?
* Og hvorfor skal man skrive "-a" her?


## Oprettelse af konto på DockerHub

Docker har et repository hvor der opbevares docker images. 
For at kunne uploade er det nødvendigt at have en konto.

På kurset vil vi umiddelbart ikke anvende dockerhub. 
Vi bygger images lokalt og køre dem lokalt. 


# Maskinspecifikke noter


### Windows

Docker kan køre på windows i udviklingsfasen mens man i driften anbefales at køre på linux. 
I dette kursus er eksemplerne ganske enkle og kører på den lokale maskine. 

Der er to måder at køre på windows. Den klassiske med Linux installeret i  VirtualBox på PC'en. 
Og så er der den "nye" hvor alt er i et med Hyper-V VM.  

Følg vejledning: https://docs.docker.com/docker-for-windows/install/

Nedenstående er alene noter til installationen. Det er vigtigt at følge installationenen på Dockers 
hjemmeside.



* Vælg CE
* Vælg mulighed for at køre fra CMD (så kan den også køre fra [gitbach](./gitbash.md)) 
* "docker-users group" (brugeren skal være medlem af denne gruppe eller du skal køre stand alone)
* 
* docker run hello-world

