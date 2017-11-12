# Maven

Vi skal have mulighed for at bygge war og jar filer til at putte i Dockers

Hertil kan vi bruge[Maven](https://maven.apache.org). 

Hvis du anvender Java 9 - vil det være vigtigt at den Maven du har installeret ikke er ældre end version (3.5.x).

Vi sikrer at der laves en .m2 repository


## Installation

```
sudo apt-get install maven


``` 

Installation af Maven har synes jeg ikke rigtig er er blevet ordentlig automatiseret på de 3 hovedplatforme.

Ovennævnte version er en 3.3.9 version.


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
 