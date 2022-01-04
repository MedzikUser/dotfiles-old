#!/bin/bash

DEST_DIR="$1"
BIN_DIR_NAME="$2"
LIB_DIR_NAME="$3"
BIN_DIR="$4"
LIB_DIR="$5"
GIT_COMMIT_OPTIONS="$6"

setup() {
  rm -rf dist > /dev/zero
  mkdir dist
  cp -r .bin .lib dist/

  cd dist

  mv .bin "$BIN_DIR_NAME"
  mv .lib "$LIB_DIR_NAME"

  for file in "$BIN_DIR_NAME"/*.sh
  do
    mv "$file" "${file//.sh/}"
  done

  sed -i -e "s,\${BIN_DIR},$BIN_DIR,g" $BIN_DIR_NAME/*
  sed -i -e "s,\${LIB_DIR},$LIB_DIR,g" $BIN_DIR_NAME/*

  sed -i -e "s,\${GIT_COMMIT_OPTIONS},$GIT_COMMIT_OPTIONS,g" $BIN_DIR_NAME/fastgit

  cd ..
}

install() {
  mkdir -p "$DEST_DIR"

  cp -r "dist"/* "$DEST_DIR"
}

main() {
  setup

  install
}

main
