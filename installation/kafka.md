# kafka
[Tilbage](installation.md)



1. Home: [kafka](https://kafka.apache.org)
2. Installation

```

cd ~./lb/micro
mkdir -pv kafka
cd kafka
wget http://mirrors.dotsrc.org/apache/kafka/1.0.0/kafka_2.11-1.0.0.tgz
wget http://www-eu.apache.org/dist/kafka/1.0.0/kafka_2.11-1.0.0.tgz.md5

md5 kafka_2.11-1.0.0.tgz
cat kafka_2.11-1.0.0.tgz.md5
# sammenlign  md5 resultatet med indholdet af md5 filen og se at de er ens
# 
tar -xvzf kafka_2.11-1.0.0.tgz

# lav et symbolsk link til den aktuelle kafka
ln -s kafka_2.11-1.0.0 current
cd current
pwd
# (output) ~/lb/micro/kafka/current
ll ~/lb/micro/kafka/current
# (output) se at current er et link til version 2.11.0..
```

## Kontrol af installation



## Noter

Note on RabbitMq vs Kafka: https://content.pivotal.io/blog/understanding-when-to-use-rabbitmq-or-apache-kafka

[Tilbage](installation.md)
