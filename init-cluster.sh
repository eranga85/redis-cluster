# Waits for all Redis nodes to be ready
echo "Waiting for the Redis nodes to be ready..."
sleep 10

# Creates the cluster
echo "Creating the Redis cluster..."
redis-cli --cluster create 127.0.0.1:6380 127.0.0.1:6381 127.0.0.1:6382 \
 127.0.0.1:6383 127.0.0.1:6384 127.0.0.1:6385 \
 --cluster-replicas 1 --cluster-yes -a Eranga123
