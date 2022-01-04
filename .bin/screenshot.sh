#!/bin/bash

filename=~/Pictures/$(date +%F-%T).png

case $1 in
  select)
    maim -s --format png $filename
    imgur upload $filename
    exit
    ;;
  window)
    maim -i $(xdotool getactivewindow) --format png $filename
    imgur upload $filename
    exit
    ;;
  fullscreen)
    maim --format png $filename
    imgur upload $filename
    exit
    ;;
  *)
    printf "Usage: screenshot <select|window|fullscreen>\n"
    exit 2
    ;;
esac
