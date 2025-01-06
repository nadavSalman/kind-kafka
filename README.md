






Kafka Commands :




Producer consumer example :

Producer :
```bash
root@kafka-1:/# kafka-console-producer.sh  --bootstrap-server kafka-svc:9092 --topic my-topic
>Hi there dear consumre 
>
```

Consumer  :
```bash
root@kafka-0:/# kafka-console-consumer.sh --bootstrap-server kafka-svc:9092 --topic my-topic
Hi there dear consumre 
```