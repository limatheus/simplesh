#!/bin/bash
#
# Developed by Rafael Corrêa Gomes
# Contact rafaelcgstz@gmail.com
#


#==================================== Imports ===============================================
# Import base
. base/import.sh

# Import Sytem
. system/import.sh

# Import Server Side
. server/import.sh

# Import Desktop
. desktop/import.sh

# Presentation function and options
welcome(){

clear
echo -e "
${txtblu}
===================================

        AutoInstall SH
Create by Rafael Corrêa Gomes

===================================

${txtrst}Enter an option without .sh:

${Red}########## System${txtrst}
 "
for file in $(ls ./system)
do
    if [ $file != import.sh ]
    then
        echo $file
    fi

done;
echo -e "

${Yellow}########## Server Side
${txtrst} "

for file in $(ls ./serverside)
do
    if [ $file != import.sh ]
    then
        echo $file
    fi

done;
echo -e "

${Purple}########## Desktop
${txtrst} "
for file in $(ls ./desktop)
do
    if [ $file != import.sh ]
    then
        echo $file
    fi

done;
echo -e "


e - Exit
"
    read program

case $program in

    # Performs the function with the name of the variable passed
    e) clear; exit;;
    $program) $program; ready;;
    *) welcome;;

esac
}

welcome