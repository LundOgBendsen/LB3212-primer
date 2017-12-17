# Jenkins

[Tilbage](../installation/installation.md)

I skrivende stund (december 2017) er jenkins versionen 2.89.x. Jenkins bor på [jenkins.io](https://jenkins.io) 

Vi vil installere en jenkins på kurset som en docker container ved navn "jenkins"

På [dockerhub](https://hub.docker.com) findes image [jenkinsci/blueocean](https://hub.docker.com/r/jenkinsci/blueocean/). 
Kilden til jenkinsci/blueocean findes på [github.com/jenkinsci/blueocean-plugin](https://github.com/jenkinsci/blueocean-plugin) 

## Blue Ocean
Jenkins har tilføjet "Pipe lines" til systemet. Det der en underopdeling af et bygge job i trin (stages).
Dette er meget anvendelig til at automatisere bygge - test - installations processen.
Dette er hele grunden til at kurset har Jenkins med !!!!

Bygge trin feature har eksisteret i [Bamboo](https://www.atlassian.com/software/bamboo) fra Atlassian og 
[TeamCity](https://www.jetbrains.com/teamcity/specials/teamcity/teamcity.html) fra Jet Brains i længere tid.
Således er det meget interessant at Jenkins har introducet [BlueOcean](https://wiki.jenkins.io/display/JENKINS/Blue+Ocean+Plugin) - 
som ud over at indeholde en Pipeline editor er en opgradering af bruger grænsefladen. 


## Jenkins setup

Vi starter jenkins fra directory `~/lb/micro/primer/jenkins` - det er det samme directory
som denne '.md' dokumentation er placeret i.


Her vil der være:
* `data` - Et directory hvor Jenkins opbevarer data - opsætning, plugins og jobs.
* `start_jenkins.sh` - Starter jenkins i Docker.

## DNS
Vi starter lidt simpelt og tilføjer 'jenkins.course' til hosts filen - den peger på localhost.

Hosts filen ligger i /etc/hosts. På windows ligger filen ligendes i /etc/hosts - når man anvender [gitbash](../bash/gitbash.md). 
På Windows 10 ligger filen fysisk `PS C:\Windows\system32\drivers\etc\hosts` - kræver at man kører som Administrator.

```
sudo vim /etc/hosts
# tilføj linien
127.0.0.1       jenkins.course
# gem og exit :wq

```
 

## Start Jenkins

Der er lidt forskellige vejledninger på nettet. Vedlagte script bruger kun et volume mount.

* docker run - kør docker 
* --name jenkins - giv navnet 'jenkins' 
* --detach - kør som en sub process (stoppes med `docker stop jenkins` )
* --publish 8888:8080 - map lokal mac/pc 8888 til docker containerens 8080 
* --volume $DIR/data:/var/jenkins_home - data til lokalt pc/mac directory


* Bash (Macos, Linux, gitbash?)

Åben en bash i `~/lb/micro/primer/jenkins`
```
./start_jenkins.sh
```

* Powershell (Windows 10)
Der kan være problemer med at starte Docker på Windows - her en Power Shell udgave 


Åben en Power Shell i `~/lb/micro/primer/jenkins`
```
windows_jenkins_start.ps1
```


## Konfigurer jenkins

åben en browser på `http://jenkins.course#8080`

* Angiv start password. Se vejledning på skærm. Filen er i `data/..`
* Load default plugins
* Lav en bruger ved navn='adm' / password='adm' og angiv din egen email.



### Litteratur

* Sergei Filippov har lavet en ganske god beskrivelse af hvordan man kører 
Jenkins BlueOcean på docker. [running-jenkins-blueocean-using-docker](https://medium.com/@haikulab/running-jenkins-blueocean-using-docker-755ecc89e6c2)

[Tilbage](../installation/installation.md)
 