#!/bin/bash

####################
# Import Questions #
####################

declare -a modules


modules[0]=array_questions.sh
modules[1]=vim_questions.sh
modules[2]=101_questions.sh
modules[3]=variables_questions.sh
modules[4]=flowcontrol_questions.sh
modules[5]=comparisions_questions.sh

len_modules=${#modules[@]}
module_number=$(( $RANDOM % len_modules ))
source ./${modules[$module_number]}

###################
# Begin App logic #
###################

number_of_questions=5
for (( counter=0; counter < $number_of_questions; counter++ ))
do
    # Get 4 random indexes within the range of questions and answers arrays:
    len=${#questions[@]}
    declare -a randoms
    RAN1=$(($RANDOM % len))  
    RAN2=$(($RANDOM % len))  
    while [[ $RAN2 -eq $RAN1 ]]
    do
        RAN2=$(($RANDOM % len))  
    done
    RAN3=$(($RANDOM % len))  
    while [[ $RAN3 -eq $RAN1 || $RAN3 -eq $RAN2 ]]
    do
        RAN3=$(($RANDOM % len))  
    done
    RAN4=$(($RANDOM % len))  
    while [[ $RAN4 -eq $RAN1 || $RAN4 -eq $RAN2 || $RAN4 -eq $RAN3 ]]
    do
        RAN4=$(($RANDOM % len))  
    done
 
    # Pick on of the random indexes to be the question
    clear
    RAN_KEY=$((1 + $RANDOM % 4))  
    echo ${questions[RAN$RAN_KEY]}

    # Get user answer and compare to proper answer
    IFS=$'\n'
    select answer in "${answers[$RAN1]}" "${answers[$RAN2]}" "${answers[$RAN3]}" "${answers[$RAN4]}"
    do
        response=$answer
        if [ "$response" == "${answers[RAN$RAN_KEY]}" ]
        then
            echo; echo "That's Correct!"; echo
            sleep 2
            break
        else
            echo "That is not correct :("
        fi
    done
done

clear
