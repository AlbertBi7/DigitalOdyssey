#!/bin/bash

# Ensure script runs only when inside Ring1
BASE_DIR="$(pwd)"

if [ "$(basename "$BASE_DIR")" != "Ring1" ]; then
    cd "$BASE_DIR" || { echo "Ring1 not found!"; exit 1; }
fi

CURRENT_DIR="$BASE_DIR"

# Function to play teleport sound
play_teleport_sound() {
    TELEPORT_SOUND="$BASE_DIR/Teleport DBZ - Sound Effect HD [TubeRipper.com].mp3"
    if [ -f "$TELEPORT_SOUND" ]; then
        mpg123 -q "$TELEPORT_SOUND" > /dev/null 2>&1 </dev/null &
    else
        echo "⚠️ Teleport sound file not found!"
    fi
}

# Function to reset to Ring1 if Minotaur.txt is found
reset_to_ring1() {
    clear
    cat << "EOF"
       -""\
    .-"  .')     (
   j   .'_+     :[                )      .^--..
  i    -"       |l                ].    /      i
 ," .:j         '8o  _,,+.,.--,   d|   ':::;    b
 i  :'|          "88p;.  (-."_-.oP        \.   :
 ; .  (            >,%%%   f),):8"          \:'  i
i  :: j          ,;%%%:; ; ; i:%%%.,        i.   .
i  ': ( ____  ,-::::::' ::j  [:\''          [8:   )
<  ..''::::8888oooooo.  :(jj(,;,,,         [8::  <
`. :.      oo.8888888888:;%%%8o.::.+888+o.:'  |
 .           'o'88888888b'%%%%%88< Y888P""'-    ;
   "---.       Y'888888888;;.,"888b."""..::::'-'
          "-....  b'8888888:::::.8888._::-"
             :::. ':::::O:::::::.%%'|
              .      ::::::''    .'
                .                   <
                  +:         :   -';
                   :         : .::/
                    ;+_  :::. :..;;;
                    ;;;;,;;;;;;;;,;;
EOF

    sleep 1
    # Play sound from Ring1
    SOUND_FILE=$(ls "$BASE_DIR" | grep "Minotaur Roar" | head -n 1)
    SOUND_FILE="$BASE_DIR/$SOUND_FILE"
    if [ -f "$SOUND_FILE" ]; then
        mpg123 -q "$SOUND_FILE" > /dev/null 2>&1 </dev/null &
    else
        echo "⚠️ Sound file not found!"
    fi

    sleep 2
    echo "⚠️ The Minotaur caught you! Resetting back to Ring1..."
    sleep 2

    cd "$BASE_DIR"  # Explicitly go back to Ring1
    CURRENT_DIR="$BASE_DIR"  # Update directory variable
}

# Start traversal
echo "Starting traversal in Ring1..."
sleep 1

while true; do
    echo -e "\nCurrent Location: $CURRENT_DIR"
    echo -n "Available paths: "
    ls -p "$CURRENT_DIR" | grep / | tr '\n' ' '
    echo ""

    echo -e "Options: \n- Enter directory name \n- Type 'back' to go back"

    read -p "Where to go? " choice

    # Handle going back
    if [ "$choice" == "back" ]; then
        if [ "$CURRENT_DIR" != "$BASE_DIR" ]; then
            cd ..
            CURRENT_DIR="$(pwd)"
            echo "Moved back to $CURRENT_DIR"
        else
            echo "You are already at the starting point."
        fi
        continue
    fi

    # Check if selected directory exists
    if [ -d "$CURRENT_DIR/$choice" ]; then
        # Move into the selected directory
        cd "$choice"
        CURRENT_DIR="$(pwd)"

        # Special case: If entering Chamber3, teleport to PathA
        if [[ "$(basename "$CURRENT_DIR")" == "Chamber3" && -d "$BASE_DIR/PathA" ]]; then
            play_teleport_sound
            echo "✨ You found a hidden passage! Teleporting to PathA..."
            sleep 2
            cd "$BASE_DIR/PathA"
            CURRENT_DIR="$(pwd)"
            continue  # Loop back
        fi


        # Check for Minotaur.txt (Reset condition)
        if [ -f "$CURRENT_DIR/Minotaur.txt" ]; then
            reset_to_ring1
            continue
        fi
# Check for DeadEnd.txt (Reset condition)
        if [ -f "$CURRENT_DIR/DeadEnd.txt" ]; then
            echo "You have reached a Dead End ...Go back"
            continue
        fi

        # Check for Next.txt (Move to Ring2)
        if [ -f "$CURRENT_DIR/Next.txt" ]; then
             
            echo "You have Escaped Ring1..."
            break
        fi
    else
        echo "Invalid choice. Try again."
    fi
done
