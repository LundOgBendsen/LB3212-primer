# Firefox RestClient

Det er for det meste almindelige url'er der anvendes i Microservices. Og man kan
derfor bruge en almindelig web brower til at hente data.

Det er imidlertid JSON der oftest kommer ud af sprøjten.

Derfor kan det være en fordel at have installeret et rest plugin i browseren


## restClient til Firefox

Jeg har installeret Rest Client http://restclient.net/ - det er godt til at se hvad en service svarer tilbage.

En demo: https://jsonplaceholder.typicode.com

Prøv at indtaste url: https://jsonplaceholder.typicode.com/users


Der går længere og længere mellem at jeg bruger plugin'et da **curl** ligger meget bedre i hænderne på mig.


## Curl

Start bash:

```
curl https://jsonplaceholder.typicode.com

```

Jeg synes curl er en stor fordel, så kan man lave shell scripts og gemme dem i VCS'en - og dermed 
lægge queries på lager.

Ligesom manuel brug af browseren ikke indeholder **automatisering** hvorfor man som udvikler langt 
hen af vejen risikerer at spilde tiden. 


jsonplaceholder printer JSON pretty d.v.s med linie skift og indryking.

## Curl pipe json

Det er almindeligt JSON udskrives i 'en lang linie

Så kan man pipe til json 

```
curl https://jsonplaceholder.typicode.com | json

```
Så skrives JSON pretty - også når den ikke var det i forvejen

Det er et python script (som man skal have lavet et alias til)

```
alias json='python -m json.tool'

```

## Online formattering af JSON 

http://www.jsoneditoronline.org/

God hjælp til at få formatteret JSON