#!/bin/bash

# Base directories
BASE_DIR="Maze"
RING1_DIR="$BASE_DIR/Ring1"

# Function to create directories
create_dirs() {
    for dir in "$@"; do
        mkdir -p "$RING1_DIR/$dir"
    done
}

# Function to create files
create_files() {
    for file in "$@"; do
        touch "$RING1_DIR/$file"
    done
}

# Creating Ring1 directories
create_dirs \
    "PathA/Chamber1/Chamber2/Chamber3" \
    "PathA/Chamber1/Chamber2/Chamber4/TurnRight" \
    "PathA/Chamber1/Chamber2/Chamber4/TurnLeft" \
    "PathA/Chamber1/Chamber2/Chamber5" \
    "PathB/Chamber6/Chamber7" \
    "PathC/Chamber8/Chamber9/Chamber10" \
    "PathC/Chamber8/Chamber9/Chamber11"

# Creating Minotaur.txt files
create_files \
    "PathA/Chamber1/Chamber2/Chamber4/TurnRight/Minotaur.txt" \
    "PathA/Chamber1/Chamber2/Chamber5/Minotaur.txt" \
    "PathB/Chamber6/Chamber7/Minotaur.txt" \
    "PathC/Chamber8/Chamber9/Chamber10/Minotaur.txt"

# Creating Next.txt to move to Ring2
create_files \
    "PathA/Chamber1/Chamber2/Chamber4/TurnLeft/Next.txt"
    
create_files \
    "PathC/Chamber8/Chamber9/Chamber11/Coin.txt"


echo "Ring1 directory structure created successfully."
