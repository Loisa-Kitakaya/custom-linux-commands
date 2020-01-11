#!/bin/bash

function myhardware() {
  #info to be displayed on running command
  echo "Infrormation about hardware and running processes:"
  echo "Options: 'cpu', 'all', 'drives-1', 'drives-2', 'ram', 'system'"

  #take user input
  read answer

  #decision making using the "case" method
  case "$answer" in
      "cpu") lscpu #shows cpu information
      ;;
      "all") hwinfo --short #shows (in summary) information about most of the hardware components of the machine
      ;;
      "drives-1") df -H #shows information about the drives in the machine
      ;;
      "drives-2") pydf #shows information about the drives in the machine (in another format)
      ;;
      "ram") free -m #shows information about the RAM(s) in the machine
      ;;
      "system") dmidecode -t system #shows general information about the machine
      ;;
   esac

}