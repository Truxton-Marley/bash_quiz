#!/bin/bash

declare -a questions
declare -a answers

questions[0]='A simple C-style for loop.'
answers[0]='for (( i=0; i < 10; i++ )); do echo hi; done'
#
questions[1]='End of File keyboard shortcut.'
answers[1]='CTRL+D'
#
questions[2]='Basic case statement.'
answers[2]='case "$MYVAR in
    hungry) echo Eat!
        ;;
    full) echo Sleep!
        ;;
    *) echo Hmmm???
        ;;
esac'
#
#questions[3]=''
#answers[3]=''
#
#questions[4]=''
#answers[4]=''
#
#questions[5]=''
#answers[5]=''
#
#questions[6]=''
#answers[6]=''
#
#questions[7]=''
#answers[7]=''
#
#questions[8]=''
#answers[8]=''
#
#questions[9]=''
#answers[9]=''
#
#questions[10]=''
#answers[10]=''
#
#questions[11]=''
#answers[11]=''
#
#questions[12]=''
#answers[12]=''
#
#questions[13]=''
#answers[13]=''
