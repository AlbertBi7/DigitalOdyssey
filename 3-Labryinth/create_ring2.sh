#!/bin/bash

# Create Ring2 directories
mkdir -p Maze/Ring2/PathD/Chamber12/Chamber13/Chamber14
mkdir -p Maze/Ring2/PathD/Chamber12/Chamber13/Chamber15/TurnLeft
mkdir -p Maze/Ring2/PathD/Chamber12/Chamber13/Chamber15/TurnRight
mkdir -p Maze/Ring2/PathD/Chamber12/Chamber13/Chamber16
mkdir -p Maze/Ring2/PathE/Chamber17
mkdir -p Maze/Ring2/PathE/Chamber18
mkdir -p Maze/Ring2/PathF/Chamber19/Chamber20/TurnLeft
mkdir -p Maze/Ring2/PathF/Chamber19/Chamber20/TurnRight
mkdir -p Maze/Ring2/PathF/Chamber19/Chamber21

# Create special files
touch Maze/Ring2/PathD/Chamber12/Chamber13/Chamber14/
touch Maze/Ring2/PathD/Chamber12/Chamber13/Chamber15/TurnLeft/DeadEnd.txt
touch Maze/Ring2/PathD/Chamber12/Chamber13/Chamber15/TurnRight/Minotaur.txt
touch Maze/Ring2/PathD/Chamber12/Chamber13/Chamber16/
touch Maze/Ring2/PathE/Chamber17/Minotaur.txt
touch Maze/Ring2/PathE/Chamber18/
touch Maze/Ring2/PathF/Chamber19/Chamber20/TurnLeft/Next.txt
touch Maze/Ring2/PathF/Chamber19/Chamber20/TurnRight/Minotaur.txt
touch Maze/Ring2/PathF/Chamber19/Chamber21/Minotaur.txt

echo "Ring2 directories and files created successfully!"

