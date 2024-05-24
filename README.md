## Starting the Cluster

Run the following command from the project root directory:

```sh
start_cluster.sh
```

## Checking the Cluster

```sh
docker exec -it node1 bash
```

```sh
redis-cli -c -p 6380 -a Eranga123
```

```sh
cluster info
```

```sh
cluster nodes
```

## Stopping the Cluster

```sh
docker compose down
```
