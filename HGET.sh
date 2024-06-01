#!/bin/bash

#export REDIS_PASSWORD=Eranga123
# Retrieve field names (keys) from the sorted set in reverse order
sorted_keys=$(redis-cli -c -p 6380 -a Eranga123 ZREVRANGE my_sorted_set 0 -1)

# For each field name, fetch the corresponding value from the hash
for key in $sorted_keys; do
    value=$(redis-cli -c -p 6380 -a Eranga123 HGET card_info $key)
    echo "Field: $key, Value: $value"
done