#!/bin/bash

declare -a questions
declare -a answers

questions[0]='Replace all instances of foo with bar.'
answers[0]=':%s/foo/bar/g'
#
questions[1]='Search for the next instance of the current word.'
answers[1]='*'
#
questions[2]='Search for the previous instance of the current word.'
answers[2]='#'
#
questions[3]='Search for the next instance of "foobar".'
answers[3]='/foobar'
#
questions[4]='Show line numbers in vim.'
answers[4]=':set number'
#
questions[5]='Show relative line numbers in vim.'
answers[5]=':set relativenumber'
#
questions[6]='Paste text from outside of vim'
answers[6]='shift + einfg'
#
questions[7]='Reload the last saved version of the file.'
answers[7]=':e!'
#
questions[9]='Place vim in the background.'
answers[9]='CTRL-Z'
#
questions[10]='Move vim to the foreground from the background.'
answers[10]='fg'
#
questions[11]='Set the wrap margin option to 80.'
answers[11]=':set wm=80'
#
questions[10]='Go to line 42.'
answers[10]='42G'

