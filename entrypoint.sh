#!/bin/bash
set -x
while $1
do
  INPUT_STRING=$1
  case $INPUT_STRING in
	produce)
		tar -czvf produced.tar.gz docs/
		;;
	serve)
        tar -xvzf produced.tar.gz
		mkdocs $1
		break
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac
dones