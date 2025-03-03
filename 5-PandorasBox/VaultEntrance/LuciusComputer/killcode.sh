#!/bin/bash

clear
echo 'LuciusComputer Access Request Detected...'

echo 'Final authentication required.'
sleep 1
echo 'The code was given, scattered across time. Recall, or be erased.'
sleep 1
echo 'Authentication: 3-digit termination code required.'
sleep 1

KILL_CODE="504"  # Change this to your actual kill code

while true; do
    echo -n "Enter Kill Code: "
    read -s code  # Hides input
    echo ""

    if [[ "$code" == "$KILL_CODE" ]]; then
        break  # Exit loop if correct
    fi
    
    echo "ACCESS DENIED..."
    sleep 1
    echo "Wrong Password!"
    sleep 2
done

clear
echo "ACCESS GRANTED..."
sleep 1
echo "Initiating System Override..."
sleep 2
clear

#!/bin/bash

clear
echo 'LuciusComputer Access Request Detected...'
sleep 2
echo 'Final authentication required.'
sleep 2
echo 'The code was given, scattered across time. Recall, or be erased.'
sleep 2
echo 'Authentication: 3-digit termination code required.'
sleep 2

KILL_CODE="504"  # Change this to your actual kill code

while true; do
    echo -n "Enter Kill Code: "
    read -s code  # Hides input
    echo ""

    if [[ "$code" == "$KILL_CODE" ]]; then
        break  # Exit loop if correct
    fi
    
    echo "ACCESS DENIED..."
    sleep 1
    echo "Wrong Password!"
    sleep 2
done

clear
echo "ACCESS GRANTED..."
sleep 1
echo "Initiating System Override..."
sleep 2
clear

# Get terminal width and height
cols=$(tput cols)
rows=$(tput lines)

GREEN='\033[0;32m'
RESET='\033[0m'

# Fill the whole screen with green 1's and 0's (Matrix Effect)
for i in $(seq 1 $rows); do
    echo -e "${GREEN}$(cat /dev/urandom | tr -dc '01' | fold -w "$cols" | head -n 1)${RESET}"
    sleep 0.05
done
clear

# Victory Banner
echo "        d8b        888                          "
echo "        Y8P        888                          "
echo "                   888                          "
echo "888  888888 .d8888b888888 .d88b. 888d888888  888"
echo "888  888888d88P\"   888   d88\"\"88b888P\"  888  888"
echo "Y88  88P888888     888   888  888888    888  888"
echo " Y8bd8P 888Y88b.   Y88b. Y88..88P888    Y88b 888"
echo "  Y88P  888 \"Y8888P \"Y888 \"Y88P\" 888     \"Y88888\""
echo "                                             888 "
echo "                                        Y8b d88P "
echo "                                          \"Y88P\" "
echo ""
echo "You have Stopped Pandora and Saved Celestia!"
echo "Congratulations, Warrior!"


sleep 2
clear



echo "        d8b        888                          "
echo "        Y8P        888                          "
echo "                   888                          "
echo "888  888888 .d8888b888888 .d88b. 888d888888  888"
echo "888  888888d88P"   888   d88""88b888P"  888  888"
echo "Y88  88P888888     888   888  888888    888  888"
echo " Y8bd8P 888Y88b.   Y88b. Y88..88P888    Y88b 888"
echo "  Y88P  888 "Y8888P "Y888 "Y88P" 888     "Y88888 "
echo "                                             888 "
echo "                                        Y8b d88P "
echo "                                          "Y88P" 
echo ""
echo "You have Stopped Pandora and Saved Celestia!"
echo "Congratulations, Protagonist..!"
