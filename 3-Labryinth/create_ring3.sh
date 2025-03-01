#!/bin/bash

# Create Ring3 directories
mkdir -p Maze/Ring3/PathG/Chamber22/Chamber23
mkdir -p Maze/Ring3/PathG/Chamber22/Chamber24/Chamber25
mkdir -p Maze/Ring3/PathG/Chamber22/Chamber24/Chamber26/Core

# Create special files
touch Maze/Ring3/PathG/Chamber22/Chamber23/Minotaur.txt
touch Maze/Ring3/PathG/Chamber22/Chamber24/Chamber25/LoopBack.txt  
touch Maze/Ring3/PathG/Chamber22/Chamber24/Chamber26/Core/Keystone.txt
touch Maze/Ring3/PathG/Chamber22/Chamber24/Chamber26/Core/PandoraSecret.txt

echo "Ring3 directories and files created successfully!"
