#!/bin/bash

declare -a questions
declare -a answers

questions[0]='Change into the /tftp directory or create it if it does not exist.'
answers[0]='cd /tftp 2>/dev/null || mkdir /tftp'
#
questions[1]='Three options to do comparisions:'
answers[1]='test 42 -eq 53 ; [ "Cat" != "Dog" ] ; [[ $x -ne $y ]]'
#
questions[2]='Number comparision operators:'
answers[2]='-eq, -ne, -lt, -le, -gt, -ge, !'
#
questions[3]='String comparision operators:'
answers[3]='-z (length of string is zero), -n (non-zero length), ==, !='
#
questions[4]='File test operators:'
answers[4]='-d, -f, -e, -r, -w, -x'
#
questions[5]='Display the exit status of the last run command.'
answers[5]='echo $?'
#
questions[6]=""
answers[6]=''
#
questions[7]=""
answers[7]=''
#
questions[8]=""
answers[8]=''
#
questions[6]=""
answers[6]=''
#
questions[7]=""
answers[7]=''
#
questions[8]=""
answers[8]=''

questions[6]=""
answers[6]=''
#
questions[7]=""
answers[7]=''
#
questions[8]=""
answers[8]=''

