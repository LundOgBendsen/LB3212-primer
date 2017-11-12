# Lund og Bendsen 3212 - primer - for Micro Services

Dette [git repository](https://github.com/LundOgBendsen/LB3212-primer) indeholder indledende aktiviteter som man kan gøre før kurset


* Først skal man have egen personlig konto på github.
  * Åben browser og indtast url: https://github.com/LundOgBendsen/
  * Har konto allerede!
    * Hvis du har en konto på github - så er det fint at bruge den.
  * Ingen konto
    * Opret en konto ved at følge [linket](https://github.com/) *Sign up*
    * Kontoen er din egen personlige konto og er  **ikke** relateret til LundOgBendsen eller et firma du arbejder for. 
    Med mindre du anvender en email fra det firma du arbejder ved (hvilket også er ok at gøre)
  * Herefter vil vi tilføje dig til gruppen **LB3212-users** så du får adgang til det egentlige kursus materiale. 

Adgang til denne side (dette repository) er helt er åben for alle. Adgangen til kursus materialet kræver at du er med i gruppen.
Ligesom det materiale vi laver sammen i gruppen kun deles med gruppen.

Når kurset er forbi vil materialet være langtidstilgængelig 
på [kursus portalen](https://kursusportal.it) - 
her vil du kunne logge ind og finde materialet til dette kursus. 

## Bash
Kurset anvender Docker så det er vigtigt at kende bash. Se [installation af bash](bash.md)

## Clone git repository "primer" til denne maskine

Når du har fået startet [bash på maskinen](bash.md). Så er det tid til at klone dette projekt til maskinen og følge resten af **primer**

Start en bash shell og indtast (cut and paste nedenstående ind i bash) 
```
#
# Gå til dit hjemme katalog (det gør "cd uden noget") 
cd
#
# Opret directory struktur lb/micro. 
# Her vil vi arbejde under hele forløbet. 
mkdir -pv lb/micro
cd lb/micro

#
# Nu skal repositoriet hentes ned fra github til maskinen og hedde "primer"
#
git clone https://github.com/LundOgBendsen/LB3212-primer.git primer 
cd primer

# Nu skulle du gerne stå i direcory som hedder "primer" 
pwd

```

# Installation af software

Nedenfor kommer en række værktøjer og programmer som er relevant for kurset.
Hvis du kommer med egen maskine - og har installeret systemerne lidt anderledes end nedenfor vill det være helt fint.

Hvis du ikke har mulighed for at få programmerne installeret vil det stadig være muligt at få 
udbyttet af kurset. Idet adskillige opgaver er på et "design" niveau hvor værktøjerne er papir og blyant.

Ligeledes er det muligt at arbejde sammen i små grupper omkring samme maskine.  

På workshop dagen vil behovet for værktøjer være afhængig af det område du har deltager i.

* [Docker](docker.md) 
* [Java](java.md) 

# Maven

# Ide

# Nginx

# Kafka

# Firefox + restClient





