# Java

Her er beskrevet hvordan du installerer java på Ubuntu.
Det er en tilsvarende proces vi anvender til at installere java i Dockers, derfor kan vi 
bruge nedenstående senere.

Da dette er et kursus er installationen er forholdsvis manuel, så du ser hvad der sker.

## Installation af Java

På kurset anvender vi lige for tiden Java 8. 

Nedenfor er angivet både installation af 8 og 9. (9'eren er kommenteret ud)

Vi installerer java 8 på Ubuntu.
Start en Ubuntu "Terminal" (bash) og kør kommandoerne


```
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

sudo apt-get install oracle-java9-installer
# (commented out) sudo apt-get install oracle-java9-installer

# Se hvor java er !!!
# Se hvor java er - og vælg den rigtige hvis du har installeret flere java'er
sudo update-alternatives --config java

```

Når 8'eren installeres stiller Oracle 2 spørgsmål, det er et problem for bygning af dockere.
Dette løser vi med at angive "batch mode" ved installation i Docker..  

### Sæt JAVA_HOME

Vi skal have tilføjet linien
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"

til filen ~/.bashrc 

```

sudo nano ~/.bashrc
# gå til bunden af filen
# tilføj nu linien
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
# gem filen

source ~/.bashrc

echo $JAVA_HOME

# Skal skrive 
/usr/lib/jvm/java-8-oracle
 
```
Spørgsmål:

* Hvad betyder "source ..." ?
* Hvad betyder "~" foran "/.bashrc" ? 


### Kontroller at java er installeret

```
java -version

# Skal skrive 
java version "1.8.0_151"
Java(TM) SE Runtime Environment (build 1.8.0_151-b12)
Java HotSpot(TM) 64-Bit Server VM (build 25.151-b12, mixed mode)

```

# Reference

Her kan du se Digital Oceans vejledning:

https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04