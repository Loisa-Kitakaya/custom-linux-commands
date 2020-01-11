#!/bin/bash

chmod +x *

function install_cc() {
  sudo mkdir ~/.cc/
  sudo cp * ~/.cc/

  file_list="$(ls)"
  files=($file_list)

  echo "#Load custom commands" >> ~/.bashrc

  for file in "${files[@]}"
  do
      sudo mv ~/.cc/$file ~/.cc/.$file
      echo "source ~/.cc/.$file" >> ~/.bashrc
  done

  printf "You can now use these commands: \n"
  printf "  'mydistro' to see your OS's distribution info \n  'myhardware' to see your machine's hardware information \n  'make_x_file' to create a file and make it executable \n  'install_cc' to install these custom commands \n"
  printf "Use:'install_cc', to reconfigure the custom commands. \n"

}

install_cc