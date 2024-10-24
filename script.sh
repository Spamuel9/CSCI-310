#!/bin/bash

# Set the base directory where the data is located
BASE_DIR="./data"

# Move all files into their respective category parent directory
for category in "takeoff" "land" "right" "left" "forward" "backward"; do
    find "$BASE_DIR/$category" -type f -exec mv {} "$BASE_DIR/$category/" \;
done

echo "Unification of files completed!"
