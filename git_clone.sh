#!/bin/bash

function clone_pull {
  DIRECTORY=$(basename "$1" .git)
  if [ -d "$DIRECTORY" ]; then
    cd "$DIRECTORY"
    git pull
    cd ../
  else
    git clone "$1"
  fi
}

clone_pull https://github.com/anandjainsa/ansible_sample_code
