






## Kafka Commands :




### Producer consumer example :

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
---


### Create topic with simge replicatoin factor and describe it 
```bash
root@kafka-0:/# kafka-topics.sh --create  --topic single-rf --replication-factor 1   --bootstrap-server kafka-svc:9092
Created topic single-rf.
root@kafka-0:/# kafka-topics.sh --list  --bootstrap-server kafka-svc:9092
__consumer_offsets
my-topic
nadav_topic
single-rf
root@kafka-0:/# kafka-topics.sh --describe --topic single-rf  --bootstrap-server kafka-svc:9092
Topic: single-rf        TopicId: tPfr4QGPR_uV-02syX_SNQ PartitionCount: 1       ReplicationFactor: 1    Configs: min.insync.replicas=2,segment.bytes=1073741824
        Topic: single-rf        Partition: 0    Leader: 1       Replicas: 1     Isr: 1
root@kafka-0:/#
```
---
