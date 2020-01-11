#!/bin/bash

function make_x_file() {
  #to be displayed on running command
  echo "Enter file name:"

  #taking user input
  read name

  #creating the file with the name as the user's value
  touch $name

  #making the file executable
  chmod +x $name
}
