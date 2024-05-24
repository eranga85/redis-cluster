#!/bin/bash
docker compose down
docker compose up -d
docker network ls
#docker network inspect [docker-compose-redis-cluster_redis-cluster id]
docker exec -it node1 redis-cli -c -p 6380 -a Eranga123
