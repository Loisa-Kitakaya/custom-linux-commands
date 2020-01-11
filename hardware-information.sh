#!/bin/bash

function myhardware() {
  #info to be displayed on running command
  echo "Infrormation about hardware and running processes:"
  echo "Options: 'cpu', 'all', 'drives-1', 'drives-2', 'ram', 'system'"

  #take user input
  read answer

  #decision making using the "case" method
  case "$answer" in
      "cpu") sudo lscpu #shows cpu information
      ;;
      "all") sudo hwinfo --short #shows (in summary) information about most of the hardware components of the machine
      ;;
      "drives-1") sudo df -H #shows information about the drives in the machine
      ;;
      "drives-2") sudo pydf #shows information about the drives in the machine (in another format)
      ;;
      "ram") sudo free -m #shows information about the RAM(s) in the machine
      ;;
      "system") sudo dmidecode -t system #shows general information about the machine
      ;;
   esac

}