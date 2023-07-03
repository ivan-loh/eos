#!/bin/bash

docker compose down -v
docker compose up -d
sleep 5
docker compose exec broker \
  kafka-topics --create \
    --topic purchases \
    --bootstrap-server localhost:9092 \
    --replication-factor 1 \
    --partitions 1

docker compose exec broker \
  kafka-topics --create \
    --topic sesahcrup \
    --bootstrap-server localhost:9092 \
    --replication-factor 1 \
    --partitions 1

    