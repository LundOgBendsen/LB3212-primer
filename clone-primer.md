# Clone Primer
[Tilbage](README.md)

Sådan får du "installeret" primer git projektet på din maskine

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

Når det er lykkedes at få primer på egen maskine, så er det tid at gå videre med installationer og forberedelser.

[Tilbage](README.md)
