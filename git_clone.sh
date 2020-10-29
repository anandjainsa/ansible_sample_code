#!/bin/bash

function clone_pull {
  DIRECTORY=$(basename "$1" .git)
  if [ -d "$2/$DIRECTORY" ]; then
    cd "$2/$DIRECTORY"
    git pull
    cd -
  else
    mkdir -p $2 && cd $2
    git clone "$1"
    cd -
  fi
}

#clone_pull <GIT_URL> <PATH>
clone_pull https://github.com/anandjainsa/ansible_sample_code anandjain
