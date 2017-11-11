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

```
docker run -it ubuntu bash
# du kommer ud af denne run kommando ved at skrive "exit"

```
Spørgsmål: Mens shell kører ubuntu kommandoen ovenfor

* Hvordan kan man se hvad der foregår i Docker miljøet? (hint start ny shell)
* Hvad viser kommandoen "docker ps" ?




## Oprettelse af konto på DockerHub

Docker har et repository hvor der opbevares docker images. 
For at kunne uploade er det nødvendigt at have en konto.

På kurset vil vi umiddelbart ikke anvende dockerhub. 
Vi bygger images lokalt og køre dem lokalt. 


# Maskinspecifikke noter

### Linux

* https://www.docker.com/docker-ubuntu



### Macosx

* https://www.docker.com/docker-mac


### Windows

Docker kan køre på windows i udviklingsfasen mens man i driften anbefales at køre på linux. 
I dette kursus er eksemplerne ganske enkle og kører på den lokale maskine. 

Der er to måder at køre på windows. 
* **Docker toolbox** - den klassiske med Linux installeret i VirtualBox på PC'en. 
* **Docker for Windows**  den "nye" hvor alt er i et med Hyper-V virtualisering.  

Afhængig af din windows version kan du køre **Windows** eller blive nødsaget til at køre **Toolbox** 

Her er valgt **Docker Windows** udgaven. 

Følg vejledning: https://docs.docker.com/docker-for-windows/install/

Nedenstående er alene noter til installationen. Det er vigtigt at følge installationenen på Dockers 
hjemmeside.


* Vælg CE
* Vælg mulighed for at køre fra CMD (så kan den også køre fra [gitbach](./gitbash.md)) 
* "docker-users group" (brugeren skal være medlem af denne gruppe eller du skal køre stand alone)
* docker run hello-world

Hvis man kører window i VM-ware - så vil Hyber-V virtualiseringen foregå på et nested niveau. 
Her skal man huske at enable virtualization i VM-ware under memory.

Docker kører ikke rasende hurtig på den måde. Modsat på linux hvor man stort set ikke kan mærke at der starter en Docker mere.

Interaktive Docker ( med -it ) kan køres fra PowerShell


