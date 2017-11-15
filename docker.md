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

Brug afsnittet for installation enten linux, mac eller windows.

### Linux

* [Linux på PC](windows_virtualbox.md) - Det er muligt at starte Linux i en virtuel maskine inde i PC'en
* [Først skal maskinen startes op](./ubuntu.md) - her installeres Linux og Git
* [Installation af Docker](docker_ubuntu.md) - her installeres Docker på Linux


### MacOsx

* https://www.docker.com/docker-mac


### Windows

* Medbring windows PC
* [Installation af docker på windows](docker_windows.md)


## Test og afprøvning af Docker

Når du har installeret docker som du ønsker kan du teste den lidt.


Installer docker og kør
```
docker run hello-world
docker ps -a

```

Spørgsmål: 
* Hvad laver kommandoen "docker ps" ?
* Og hvorfor skal man skrive "-a" her?

```
docker run -d -p 888:80 --name webserver nginx

```

Prøv at starte en broweser og åbne url: http://localhost:888

```
# På Ubuntu kan man i bash skrive
firefox http://localhost:888

# alternativ hedder det ALT F2 og paste firefox http://localhost:888

# I Windows skriver man
explorer http://localhost:888

# På Mac'en skriver man
open http://localhost:888

```

Spørgsmål: Mens shell kører nginx kommandoen ovenfor

* Hvad viser kommandoen "docker ps" nu ?
* hvad betyder --name webserver ?
* Hvad betyder -p 888:80 ?


## Oprettelse af konto på DockerHub

Docker har et repository hvor der opbevares docker images. 
For at kunne uploade er det nødvendigt at have en konto.

På kurset vil vi umiddelbart ikke anvende dockerhub. 
Vi bygger images lokalt og køre dem lokalt. 

# play-with-docker.com
 
Det er muligt at køre docker ude i byen...

[play-with-docker.com](https://labs.play-with-docker.com/) - Her kan du køre Dockers 

Jeg har kørt den i både Firefox og Crome
