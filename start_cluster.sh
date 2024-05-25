#!/bin/bash
docker compose down
docker compose up -d
docker network ls
docker exec -it node1 redis-cli -c -p 6380 -a Eranga123
echo "Redis Clusters are up and running"