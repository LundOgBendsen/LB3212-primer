# Windows

## Docker på Windows

Docker kan køre på windows i udviklingsfasen mens man i driften anbefales at køre på linux. 
I dette kursus er eksemplerne ganske enkle og kører på den lokale maskine. 

Der er to måder at køre på windows. 
* **Docker toolbox** - den klassiske med Linux installeret i [VirtualBox på PC'en](windows_virtualbox.md). 
* **Docker for Windows**  den "nye" hvor alt er i et med Hyper-V virtualisering.  

Afhængig af din windows version kan du køre **Windows** eller blive nødsaget til at køre **Toolbox** 

Her er valgt **Docker Windows** udgaven. 

Følg vejledning: https://docs.docker.com/docker-for-windows/install/

Nedenstående er alene noter til installationen. Det er vigtigt at følge installationenen på Dockers 
hjemmeside.


* Vælg CE
* Vælg mulighed for at køre fra CMD (så kan den også køre fra [gitbach](./gitbash.md)) 
* "docker-users group" (brugeren skal være medlem af denne gruppe eller du skal køre stand alone)
* docker run hello-world

Hvis man kører window i VM-ware - så vil Hyber-V virtualiseringen foregå på et nested niveau. 
Her skal man huske at enable virtualization i VM-ware under memory.

Docker kører ikke rasende hurtig på den måde. Modsat på linux hvor man stort set ikke kan mærke at der starter en Docker mere.

Interaktive Docker ( med -it ) kan køres fra PowerShell

Det skal ikke skjules at Docker kører godt på [Linux](docker_ubuntu.md)