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
echo "|γπγ$currentName";
echo "|γπ§γ$currentEmail";
echo "-------------------------------"
echo ""
echo -e ${Yellow};
echo '( ο½₯3ο½₯)οΎ Choose your Profile ';
echo ""

echo -e ${White};
options=("Basal" "Personal" "Cancel")
select opt in "${options[@]}"
do
    case $opt in
        "Basal")
            # Change this to your values
            git config --local user.name "XXXXX"
            git config --local user.email XXXXX@XXXX
            git config --local --add core.sshCommand 'ssh -i ~/.ssh/id_rsa'
            #-------------------
            echo ""
            echo -e ${Yellow};
            echo "( ο½₯3ο½₯)πͺπ«γπγXXXX is Setγπ"
            break
            ;;
        "Personal")
            # Change this to your values
            git config --local user.name "XXXX"
            git config --local user.email XXX@XXX
            git config --local --add core.sshCommand 'ssh -i ~/.ssh/id_rsa1'
             #-------------------
            echo ""
            echo -e ${Yellow};
            echo "( ο½₯3ο½₯)πͺπ«γπ¦γXXXX is Setγπ¦"
            break
            ;;
        "Cancel")
            break
            ;;
        *) 
        echo -e ${Red};
        echo "γΎ( \`3Β΄)γ· invalid option ($REPLY), profile not changed ";  
        break ;;
    esac
done
echo -e ${White};
newName=$(git config user.name)
newEmail=$(git config user.email)
echo "-------------------------------"
echo "|γπγ$newName";
echo "|γπ§γ$newEmail";
echo "-------------------------------"
echo ""