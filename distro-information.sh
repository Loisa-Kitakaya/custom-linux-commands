#!/bin/bash

function mydistro() {
 echo "Find information about your ditribution and version." 
 echo "Options: 'less', 'more', 'details'"

 read answer

  case "$answer" in
     "less") lsb_release -a
     ;;
     "more") hostnamectl
     ;;
     "details") cat /etc/*-release
     ;;
  esac
}
