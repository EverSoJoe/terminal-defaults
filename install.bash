#!/usr/bin/env bash

find . -type d -exec chmod 700 {} \;
find . -type f -exec chmod 600 {} \;

shopt -s dotglob
shopt -s extglob
yes | cp -rf ./!(install.bash|.git) ~

