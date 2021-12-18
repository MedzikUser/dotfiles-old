#!/bin/bash

source ${LIB_DIR}/bash_colors.sh

while true
do
  printf "${COLOR_BLUE}"
  if yt-dlp $@
  then
    printf "${COLOR_GREEN}Exit code $?, SUCCESS!\n${COLOR_NC}"

    break
  else
    printf "${COLOR_RED}Exit code $?, retrying...\n${COLOR_NC}"
  fi

  sleep 5
done
