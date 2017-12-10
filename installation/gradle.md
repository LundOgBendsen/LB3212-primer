# Gradle
[Tilbage](installation.md)

Vi skal have mulighed for at bygge war og jar filer, køre build pipes m.v.

Hertil kan vi bruge[Maven](https://maven.apache.org) og /eller [Gradle](https://gradle.org).

 

## Installations metode

Man kan bruge en package manager eller installere Gradle direkte. 
Det vil være en god ide med en package manager når man skal bruge Gradle til løbende udvikling. Der kommer løbende nye
 versione af Gradle.
 
Jeg bruger [SDKMAN](http://sdkman.io) på MacOs. Den kan også anvendes på Linux mens man på Windows 
har en version Powershell version. Ved at køre [gitbash](../bash/gitbash.md) 
med [Gnu on Windows](../bash/gow-windows.md) viser det sig at vi kan bruge samme **bash** systematik på kurset.   


## Installation


* Windows 10 zip etc.

[Git bash](../bash/gitbash.md) er ikke udstyret med zip faciliteter. 
Her kan man med fordel installere [Gnu on Windows](../bash/gow-windows.md)


* SDKMAN

```
curl -s "https://get.sdkman.io" | bash
# start a new terminal ..
source ~/.sdkman/bin/sdkman-init.sh

``` 
* Gradle

```
sdk install gradle

``` 


## Test gradle installation

```
gradle --version
(Skal vise...)
------------------------------------------------------------
Gradle 4.4
------------------------------------------------------------

Build time:   2017-12-06 09:05:06 UTC
Revision:     cf7821a6f79f8e2a598df21780e3ff7ce8db2b82

Groovy:       2.4.12
Ant:          Apache Ant(TM) version 1.9.9 compiled on February 2 2017
JVM:          1.8.0_151 (Oracle Corporation 25.151-b12)
OS: (linux)   Linux 4.10.0-40-generic amd64 
OS: (macos)   Mac OS X 10.13.1 x86_64 

``` 

## Test at Gradle virker og kan compile

```
cd gradletest

gradle build

# her skal gradle downloade filer og skrive
 

BUILD SUCCESSFUL in 1s
5 actionable tasks: 5 executed

``` 

## Test at programmet kan køre

Prøv at køre jar filen som Gradle byggede ovenfor

```

gradle run -Dexec.args="Hans Christian Andersen"

```

## Med alene java hedder det

java -jar build/libs/gradletest-0.1.0.jar Hans Christian Andersen 

[Tilbage](installation.md)
