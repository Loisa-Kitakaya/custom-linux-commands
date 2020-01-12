#!/bin/bash

#makes the files executable if they are not
chmod +x *

#install function
function install_cc() {

  #install required packages for commands to run
  sudo apt-get install hwinfo pydf &> /dev/null

  echo "The following packages have been installes: 'hwinfo', 'pydf' \n"

  #create a hidden directory in the user's account directory
  #copy the contents of this directory to the user's account directory
  sudo mkdir ~/.cc/
  sudo cp * ~/.cc/

  #a variable storing the list of items in this directory
  files=(create-file-make-it-executable.sh distro-information.sh hardware-information.sh)

  #add line to file '.bashrc'
  echo "#Load custom commands" >> ~/.bashrc

  #loop to change the names of the files in the user's account directory
  for file in "${files[@]}"
  do

      #rename files
      sudo mv ~/.cc/$file ~/.cc/.$file
      #add line to file '.bashrc'
      echo "source ~/.cc/.$file" >> ~/.bashrc

  done

  #instructions to print after installation
  printf "You can now use these commands: \n"
  printf "  'mydistro' to see your OS's distribution info \n  'myhardware' to see your machine's hardware information \n  'make_x_file' to create a file and make it executable \n  'install_cc' to install these custom commands \n"
  printf "Use:'bash install.sh', while inside this directory to reconfigure the custom commands. \n"

}

install_cc