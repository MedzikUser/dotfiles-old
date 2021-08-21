#!/usr/bin/bash

# RUN THIS AS SUDO

# Colors

#COLOR='\033[KEYm'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Install with pacman

## Node.js
printf "${BLUE}Installing Node.js...${NC}\n"

pacman -Sy nodejs yarn npm --noconfirm

## Go
printf "${BLUE}Installing Golang...${NC}\n"

pacman -S go --noconfirm
