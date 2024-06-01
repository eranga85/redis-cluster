#!/bin/bash

REDIS_HOST="127.0.0.1"
REDIS_PORT="6379"
REDIS_PASSWORD="Redis6379"
SYLLABLES=("ba" "bo" "be" "da" "do" "de" "la" "lo" "le" "ma" "mo" "me" "na" "no" "ne" "pa" "po" "pe" "ra" "ro" "re" "sa" "so" "se" "ta" "to" "te")

# Function to generate a random name
generate_random_name() {
    name=""
    for ((i=1; i<=$1; i++)); do
        syllable_index=$((RANDOM % ${#SYLLABLES[@]}))
        name="$name${SYLLABLES[$syllable_index]}"
    done
    echo $name
}

# Loop to insert names into Redis hash
for ((i=1; i<=100; i++)); do
    field="user_name_$i"
    random_name=$(generate_random_name $((RANDOM % 3 + 2)))  # Random length between 2 and 4 syllables

    redis-cli -h $REDIS_HOST -p $REDIS_PORT -a $REDIS_PASSWORD HSET card_info "$field" "$random_name"
    redis-cli -h $REDIS_HOST -p $REDIS_PORT -a $REDIS_PASSWORD ZADD my_sorted_set $(date +%s) $field
done

echo "Insertion of 100 random names into Redis hash completed."