#!/bin/bash

function make_x_file() {
 echo "Enter file name:"
 read name

 touch $name

 chmod +x $name
}
