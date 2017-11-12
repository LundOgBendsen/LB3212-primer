# Maven

Vi skal have mulighed for at bygge war og jar filer til at putte i Dockers

Hertil kan vi bruge[Maven](https://maven.apache.org). 

Hvis du anvender Java 9 - vil det være vigtigt at den Maven du har installeret ikke er ældre end version (3.5.x).

Vi sikrer at der laves en .m2 repository


## Installation

```
sudo apt-get install maven


``` 

Installation af Maven har synes jeg ikke rigtig er er blevet ordentlig automatiseret på de 3 hoved-platforme.

Ovennævnte version er en 3.3.9 version. Hvis du kører java 9 er den lidt for gammel.
Du kan prøve at opgradere den til 3.5.2 hvis du har tid. Se Reference henvisning nederst på siden.


## Test maven installation

```

mvn --version
# skal vise nedenstående
Apache Maven 3.3.9
Maven home: /usr/share/maven
Java version: 1.8.0_151, vendor: Oracle Corporation
Java home: /usr/lib/jvm/java-8-oracle/jre
Default locale: en_US, platform encoding: UTF-8
OS name: "linux", version: "4.10.0-38-generic", arch: "amd64", family: "unix"


``` 

## Test at Maven kan compile

```
mvn package
# her skal maven downloade en masse filer og slutte med 
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO] 
[INFO] primer ............................................. SUCCESS [  2.557 s]
[INFO] mvntest ............................................ SUCCESS [ 14.670 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 17.434 s
[INFO] Finished at: 2017-11-12T12:59:20-08:00
[INFO] Final Memory: 22M/233M

``` 

## Test at programmet kan køre

Prøv at køre jar filen som maven byggede ovenfor

```

java -jar mvntest/target/mvntest-1.0-SNAPSHOT.jar Hans Christian Andersen
# her skal java sige hej ...

``` 

# Reference

* Installation med apt (som vist ovenfor): https://www.mkyong.com/maven/how-to-install-maven-in-ubuntu/ 
* Installation af maven "fra bunden" : https://www.vultr.com/docs/how-to-install-apache-maven-on-ubuntu-16-04

