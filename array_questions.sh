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
questions[3]="Print values starting from index 3 of the array, penguins."
answers[3]='echo "${penguins[@]:3}"'
#
questions[4]="Print two values starting from index 3 of the array, penguins."
answers[4]='echo "${penguins[@]:3:2}"'
#
questions[5]="Print the index values of the array, kitties."
answers[5]='echo "${!kitties[@]}'
#
questions[6]="Find the length of the array, kitties."
answers[6]='echo "${#kitties[@]}"'
#
