#!/bin/bash

source ${LIB_DIR}/bash_colors.sh

if [ $# -eq 0 ]
then
  COMMIT_MSG="update"
else
  COMMIT_MSG="$@"
fi

printf "${COLOR_BLUE}Pull changes from remote...\n${COLOR_NC}"
git pull

printf "${COLOR_BLUE}Commit...\n${COLOR_NC}"
git add .
git commit -m "$COMMIT_MSG"

printf "${COLOR_BLUE}Push to remote...\n${COLOR_NC}"
git push --follow-tags
