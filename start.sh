#!/bin/bash

docker-compose up -d
docker network ls
docker network inspect [docker-compose-redis-cluster_redis-cluster id]
docker exec -it redis-cluster-5 redis-cli --cluster create 162.25.0.2:6390 162.25.0.3:6391 162.25.0.4:6392 162.25.0.5:6393 162.25.0.6:6394 162.25.0.7:6395 --cluster-replicas 1 -a Eranga123