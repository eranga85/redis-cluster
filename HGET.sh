#!/bin/bash

export REDIS_PASSWORD=Eranga123
# Retrieve field names (keys) from the sorted set in reverse order
sorted_keys=$(redis-cli -p 6380 -a $REDIS_PASSWORD ZREVRANGE my_sorted_set 0 -1)

# For each field name, fetch the corresponding value from the hash
for key in $sorted_keys; do
    value=$(redis-cli -p 6380 -a $REDIS_PASSWORD HGET card_info $key)
    echo "Field: $key, Value: $value"
done
