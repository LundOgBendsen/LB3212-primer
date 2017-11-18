# Lynkursus i bash

Det er vigtigt at når du møder på kurset er istand til at forstå bash kommandoer

Således at du kan få så meget som muligt ud af kurset :+1:

bash er nemlig ikke vigtig i kurset - det er bare **100%** nødvendig

Start bash  som du har fået den installeret på forrige side og kontroller

## Opgave 1 Hvad laver kommandoen "cd" ?

```
cd lb/micro

```

Ja tænkte det nok - der var for nemt. Du kan jo allerede en masse bash kommandoer
* cd - betyder det samme alle steder
* mkdir - betyder også det samme

```
cd ~/lb/micro

```

Tilde betyder directory hvor HOME er.

## Opgave 2 - ls kommandoen 

Vi forudsætter at du har åbnet en bash shell og står i directory hvor **primer** er hentet ned. (Netop som Opgave 1 har gjort)

For at liste filer i et directory anvender man kommandoen "ls" - som svarer til "dir" i Dos verdenen.

Prøv at skrive "ls README.*" (og ny linie)
Så skulle du gerne se noget i retning af ..

```
ls README.*
README.md

```
Her ser du alle filer der hedder noget med README


Prøv at skrive ls -l -a  (og ny linie)   

```

ls -l -a
drwxr-xr-x  10 aka  staff   340 Oct 29 19:04 .
drwxr-xr-x   4 aka  staff   136 Oct 29 17:46 ..
drwxr-xr-x  13 aka  staff   442 Oct 29 19:04 .git
-rw-r--r--   1 aka  staff  1954 Oct 28 11:48 .gitignore
-rw-r--r--   1 aka  staff  2235 Oct 29 18:01 README.md
... og mange flere

```
Her ser du alle filer linie for linie  fordi der står  (-l) på kommandolinien
Inklusiv skjulte filer fordi der står (-a) på kommandolinien
  
Her fremgår at der findes et directory ".git". Dette bruges af versionsstyringssystemet til at holde styr på ændringer i repositoriet.

## Opgave 3 - find kommandoen 

kommandoen **find** bruges til at udskrive filer i directorytræet.

Prøv at køre kommandoen og se hvad den viser
```
find *

```

## Opgave 4 - grep kommandoen 

Grep er et filter der udvælger linier der indeholder noget bestemt.
**grep** kan bruge output fra **find** som input. Det kan man gøre ved det lodrette "|" pipe symbol. 
Prøv at finde alle filer der indeholder teksten "sh"
```
find * | grep "sh"

```


# Eksamensspørgsmål

## Find og grep

Prøv at køre kommandoen 
```
find * | grep -v "sh"

```

Spørgsmål:
1. Hvad laver kommandoen "find"?
1. Hvad laver den lodrette streg efter "find *"?
1. Hvad kalder man den lodrette streg?
1. Hvor finder du den lodrette streg på tastaturet?
1. hvad laver "grep"? 
1. hvad laver "\\.sh" ? 
1. hvad laver -v efter grep"? 

Prøv at finde svar til spørgsmålende

## Opgave 5 - sudo 

Når man installerer git på [Ubuntu](ubuntu.md) skriver vi "sudo ..." 
```
sudo apt install git

```

# Eksamensspørgsmål

1. Hvad betyder sudo ?
1. Hvad kan problemet være ved hele tiden at køre som superbruger ?
