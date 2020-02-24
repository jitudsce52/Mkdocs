#!/bin/sh
  INPUT_STRING=$1
  case $INPUT_STRING in
        produce)
                tar -czvf produced.tar.gz docs/ sites/ mkdocs.yml
                ;;
        serve)
        tar -c / -xvzf produced.tar.gzs
                mkdocs $1
                break
                ;;
        *)
                echo "Sorry, I don't understand"
                ;;
  esac
