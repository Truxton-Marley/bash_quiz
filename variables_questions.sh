#!/bin/bash

declare -a questions
declare -a answers

questions[0]='More common form of writing "declare -x MYVAR.'
answers[0]='export MYVAR'
#
questions[1]='Result of the exit status of the last command.'
answers[1]='$?'
#
questions[2]='Variable to store the prompt string.'
answers[2]='$PS1'
#
questions[3]='Show the type of ls'
answers[3]='type ls'
#
questions[4]='Two ways of reprsenting all parameters passed to your script.'
answers[4]='$*, $@'
#
questions[5]='Shell pattern to remove the last character from a variable.'
answers[5]='echo ${MYVAR%?}'
#
questions[6]='Shell pattern (not regex) to remove the largest possible match.'
answers[6]='echo ${MYVAR%%somepattern*}'
#
questions[7]='Shell pattern to remove .txt from end of variable.'
answers[7]='echo ${MYTXT%.txt}'
#
questions[8]='Shell pattern to remove first character from a variable.'
answers[8]='echo ${MYVAR#?}'
#
questions[9]='Used to return just the filename from an absolute path.'
answers[9]='basename'
#
questions[10]='Used to return just the directory path from an absolute path.'
answers[10]='dirname'
#
questions[11]='Shell pattern to remove "kitty" from the middle of a variable.'
answers[11]='echo ${MYVAR/kitty}'
#
#questions[12]=''
#answers[12]=''
#
#questions[13]=''
#answers[13]=''

