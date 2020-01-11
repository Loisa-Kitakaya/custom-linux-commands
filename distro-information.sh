#!/bin/bash

function mydistro() {
   #info to be displayed on running command
   echo "Find information about your ditribution and version." 
   echo "Options: 'less', 'more', 'details'"

   #take user input
   read answer

   #decision making using the "case" method
   case "$answer" in
      "less") sudo lsb_release -a #show distribution information in a short summary
      ;;
      "more") sudo hostnamectl #show distribution information in a little bit more detail
      ;;
      "details") sudo cat /etc/*-release #show distribution information in details
      ;;
   esac
}
