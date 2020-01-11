#!/bin/bash

function myhardware() {
  echo "Infrormation about hardware and running processes:"
  echo "Options: 'cpu', 'all', 'drives-1', 'drives-2', 'ram'"

  read answer

  case "$answer" in
      "cpu") lscpu
      ;;
      "all") hwinfo --short
      ;;
      "drives-1") df -H
      ;;
      "drives-2") pydf
      ;;
      "ram") free -m
      ;;
   esac

}