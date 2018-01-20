#!/usr/bin/env bash

# ~/osx.sh — Originally from https://mths.be/osx

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

creat_path() {
  creat_path_with ~/Documents/$1/
  creat_path_with ~/Documents/$1/conf
  creat_path_with ~/Documents/$1/projects
  creat_path_with ~/Documents/$1/tests
  return 0
}

creat_path_with() {
  if [ ! -d $1 ]; then
    mkdir -p $1;
    echo "Created \"$1\""
  else
    echo "WARNING: \"$1\" already exit"
  fi
  return 0
}

clone() {
  echo ""
  echo "Move to $1"
  cd $1
  echo "clone project $2"
  echo ""
  git clone $2
}

creat_path android
creat_path ios
creat_path backend
creat_path panda

clone ~/Documents/android/projects git@bitbucket.org:rockspoon/rockspoon-pos.git
clone ~/Documents/ios/projects git@bitbucket.org:rockspoon/rockspoon-ios.git
clone ~/Documents/backend/projects git@bitbucket.org:rockspoon/rockspoon-backoffice.git

clone ~/Documents/panda/projects git@bitbucket.org:e_roussillon/panda_android.git
clone ~/Documents/panda/projects git@bitbucket.org:e_roussillon/panda_ios.git
clone ~/Documents/panda/projects git@bitbucket.org:e_roussillon/panda_phoenix.git
clone ~/Documents/panda/projects git@bitbucket.org:e_roussillon/panda_node.git
