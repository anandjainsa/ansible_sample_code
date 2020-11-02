#!/bin/bash

function clone_pull {
  DIRECTORY=$(basename "$1" .git)
  if [ -d "$2/$DIRECTORY" ]; then
    cd "$2/$DIRECTORY"
    echo "this $2/$DIRECTORY"

    if [ -d ".git" ]; then
      git pull origin $3
      cd -
    else
      git init
      git remote add origin $1.git
      git pull origin $3
      cd -
    fi
  else
    mkdir -p $2 && cd $2
    git clone "$1"
    cd -
  fi
}

#clone_pull <GIT_URL> <PATH> <Branchname>
read -p "enter branch name: " BRANCH_NAME
clone_pull https://github.com/anandjainsa/ansible_sample_code /opt/anandjain $BRANCH_NAME
read -p "enter branch name 2: " BRANCH_NAME_2
clone_pull https://github.com/anandjainsa/ansible_sample_code /tmp/anandjain $BRANCH_NAME_2
