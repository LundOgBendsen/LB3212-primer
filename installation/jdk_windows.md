# JDK - Java på Windows 10
[Tilbage](installation.md)

Her er beskrevet hvordan du installerer Java på Windows 10.
Da dette er et kursus er installationen er forholdsvis manuel, så du ser hvad der sker.

Internt i Docker images installeres Java anderledes, her er det bedre at følge [Ubuntu](./jdk_ubuntu.md) udgaven.

## Installation af Java

På kurset anvender vi lige for tiden Java 8. 

Download [JAVA JDK fra Oracle](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
her kan man vælge nye versioner (Java 9..), gå lidt ned og find SE8uXXX (xxx=152) - eller nyerere. 

Min maskine er en 64 bit masine. Derfor vælger jeg x64

Jeg får hentet filen jdk-8u151-windows-x64.exe ned i mit downloads katalog

Installationen af JDK er blevet **headless (silent)** - dette betyder at installationen af JDK kun får cursoren til at blinke lidt. 
Det tager nogle minutter at gennenføre installationen.  

Start Windows Power Shell **som administrator** (bemærk shellen starter i system32 kataloget...)

```
cd c:\\
cd Users
cd <<dit bruger navn>
.\Downloads\jdk-8u151-windows-x64.exe /s ADDLOCAL="all"

# Vent lidt og se at Java kommer i Program Files uder det korte navn
dir /PROGRA~1
exit
```

Når der er gået lidt tid vil JDK være installeret C:\Program Files\Java\jdk1.8.0_151

Når der er installeret så bemærk at 64 bit version nu er i Program Files.

### Sæt JAVA_HOME

* Åben File Explorer
* Vælg "Denne PC"
* Højre klik og vælg Egenskaber
* Vælg Avancerede systemindstillinger
* Vælg miljøvariable
* Ny variabel **JAVA_HOME=c:\PROGRA~1\Java\jdk1.8.0_151**
* Rediger "Path" 
  * Tilføj **%JAVA_HOME%\bin**


### Kontroller at Java er installeret

```
java -version

# Skal skrive 
java version "1.8.0_151"
Java(TM) SE Runtime Environment (build 1.8.0_151-b12)
Java HotSpot(TM) 64-Bit Server VM (build 25.151-b12, mixed mode)

```


[Tilbage](installation.md)
