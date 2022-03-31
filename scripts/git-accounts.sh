#!/bin/bash

# Color off
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

currentName=$(git config user.name)
currentEmail=$(git config user.email)
echo -e ${Green};
echo '-------Current Profile is:-----';
echo "|　📛　$currentName";
echo "|　📧　$currentEmail";
echo "-------------------------------"
echo ""
echo -e ${Yellow};
echo '( ･3･)ﾉ Choose your Profile ';
echo ""

echo -e ${White};
options=("Basal" "Personal" "Cancel")
select opt in "${options[@]}"
do
    case $opt in
        "Basal")
            # Change this to your values
            git config --local user.name "XXXXX"
            git config --local user.email xxxxx@xxxxx.xxxxx
            #-------------------
            echo ""
            echo -e ${Yellow};
            echo "( ･3･)🪄💫　👔　Basal is Set　👔"
            break
            ;;
        "Personal")
            # Change this to your values
            git config --local user.name "XXXXX"
            git config --local user.email XXXX@gmail.com
             #-------------------
            echo ""
            echo -e ${Yellow};
            echo "( ･3･)🪄💫　🦌　xxxx is Set　🦌"
            break
            ;;
        "Cancel")
            break
            ;;
        *) 
        echo -e ${Red};
        echo "ヾ( \`3´)シ invalid option ($REPLY), profile not changed ";  
        break ;;
    esac
done
echo -e ${White};
newName=$(git config user.name)
newEmail=$(git config user.email)
echo "-------------------------------"
echo "|　📛　$newName";
echo "|　📧　$newEmail";
echo "-------------------------------"
echo ""