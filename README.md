## Starting the Cluster

Run the following command from the project root directory:

```sh
docker compose up -d
```

## Checking the Cluster

```sh
docker exec -it node1 bash
```

```sh
redis-cli -c -p 6381
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
