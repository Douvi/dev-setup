#!/bin/bash
clear;
echo '################################################################################'
if [ "$#" -eq  "0" ]
   then
     git --no-pager log --graph --all --color --pretty=format:"%C(auto)%H %C(auto)%d (%C(magenta)%an%Creset - %cr):%Cgreen'%s'%Creset" --date=relative -35;
 else
     git --no-pager log --graph --all --color --pretty=format:"%C(auto)%H %C(auto)%d (%C(magenta)%an%Creset - %cr):%Cgreen'%s'%Creset" --date=relative -$1;
 fi
