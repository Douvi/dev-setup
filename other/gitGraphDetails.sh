#!/bin/bash
git log --graph --decorate --name-status $1 --pretty=format:"%C(auto)%H %C(auto)%d %n Autor: %C(magenta)%aN%Creset (%ae) %n Date:  %aD %n%n %Cgreen ------- '%s' ------- %Creset %n";
