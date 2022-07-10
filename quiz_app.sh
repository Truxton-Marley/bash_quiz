#!/bin/bash

declare -a questions
declare -a answers

questions[0]="Create an array, myarr, consisting of 'bunny', ls, 3.14."
answers[0]="myarr=('bunny' ls 3.14)"
#
questions[1]="Create an empty array, penguins."
answers[1]="penguins=()"
#
questions[2]="Print all the values of the array, penguins."
answers[2]='echo "${penguins[@]}"'
#
questions[3]="Print value from index 3 of the array, penguins."
answers[3]='echo "${penguins[@]:3}"'
#
questions[4]="Print two values from index 3 of the array, penguins."
answers[4]='echo "${penguins[@]:3:2}"'
#
questions[5]="Print the index values of the array, kitties."
answers[5]='echo "${!kitties[@]}'
#
questions[6]="Find the length of the array, kitties."
answers[6]='echo "${#kitties[@]}"'
#

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
    select answer in ${answers[$RAN1]} ${answers[$RAN2]} ${answers[$RAN3]} ${answers[$RAN4]}
    do
        response=$answer
        if [ "$response" == "${answers[RAN$RAN_KEY]}" ]
        then
            echo "\nThat' Correct!"
            echo
            break
        else
            echo "That is not correct :("
        fi
    done
done

clear
