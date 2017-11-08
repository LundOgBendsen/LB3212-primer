#!/usr/bin/env bash
# filename: 		clone-primer.sh
# function:			opretter directories og laver clone (download) git til
#                   ønsket directory
# usage:
#					Man kan kopiere og paste kommandoer til bash
# ----------------------------------------------------------------------------

# Gå til dit hjemme katalog (det gør "cd uden noget")
#
cd
mkdir -pv lb/micro
cd lb/micro

#
# Nu skal repositoriet hentes ned fra github til maskinen og hedde "primer"
#
git clone https://github.com/LundOgBendsen/LB3212-primer.git primer
cd primer

# Nu skulle du gerne stå i direcory som hedder "primer"
pwd
#