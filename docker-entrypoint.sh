#!/bin/sh
  INPUT_STRING=$1
  case $INPUT_STRING in
        produce)
		cd Mkdocs_config
                tar -czvf produced.tar.gz docs/ site/ mkdocs.yml
                ;;
        serve)
	
        tar -C / -xvzf Mkdocs_config/produced.tar.gz
                mkdocs $1
                break
                ;;
        *)
                echo "Sorry, I don't understand"
                ;;
  esac
