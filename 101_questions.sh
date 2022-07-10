#!/bin/bash

declare -a questions
declare -a answers

questions[0]="Check you bash version."
answers[0]='bash --version'
#
questions[1]='Redirect both stdout and stderr to "thisfile".'
answers[1]='somecommand &> thisfile'
#
questions[2]="Redirect the stderr to the same location as stdout (order is important!)."
answers[2]='fookat > barfile 2>&1'
#
questions[3]='Redirect multiline input using <<.'
answers[3]='wc << EOF 
let me see what happens here
and here
EOF'
#
questions[4]='Start ./myscript in the background.'
answers[4]='./myscript &'
##
questions[5]="Change foo.sh to have -rwxr-xr-x permissions."
answers[5]='chmod 755 foo.sh'
##
questions[6]="Do a dry run of the script bar.sh"
answers[6]='bash -n bar.sh'
##
#questions[7]=""
#answers[7]=''
##
#questions[8]=""
#answers[8]=''

