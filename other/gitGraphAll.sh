#!/bin/bash
# git log --pretty=oneline --graph --decorate --all --pretty=format:"%C(auto)%H %C(auto)%d (%Cblue%an%Creset):%Cgreen'%s'%Creset"
git log --pretty=oneline --graph --all --color --pretty=format:"%C(auto)%H %C(auto)%d (%C(magenta)%an%Creset - %cr):%Cgreen'%s'%Creset" --date=relative
