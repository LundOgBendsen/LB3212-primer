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
* https://www.docker.com/docker-windows - vælg "CE"


Installer docker og kør
```
docker run hello-world

```


## Oprettelse af konto



### Windows

Følg vejledning: https://docs.docker.com/docker-for-windows/install/

* Vælg CE
* Vælg mulighed for at køre fra CMD (så kan den også køre fra [gitbach](./gitbash.md)) 
* "docker-users group" (brugeren skal være medlem af denne gruppe eller du skal køre stand alone)
* docker run hello-world

