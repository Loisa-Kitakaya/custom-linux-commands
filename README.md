# custom-linux-commands

- [About](#About)
- [Installation](#Installation)
  - [Additional-installation-instructions](#Additional-installation-instructions)
- [Configuration](#Configuration)
- [Troubleshooting](#Troubleshooting)
- [Licence](#Licence)

## About

This project uses shell scripts that enable the user to run custom commands in the terminal.

Generally the commands do the following:
--Display System information
--Display Distribution information
--Display Hardware information
--Install the custom commands

The shell (non-user defined) commands used in this project:

- lsb_release -a
- hostnamectl
- cat /etc/\*-release
- lscpu
- hwinfo --short
- df -H
- pydf
- free -m
- dmidecode -t system

The custom (user defined) commands used in this project:

- mydistro
- myhardware
- make_x_file

## Installation

To install these custom commands copy or type the following commands in your terminal:

`git clone https://github.com/Loisa-Kitakaya/custom-linux-commands.git`
To clone the repository

`cd custom-linux-commands`
To move into directory "custom-linux-commands".

`bash install.sh`
To install the shell scripts into your machine.

### Additional installation instructions

**Requirement:**

- _Debian based OS e.g. Debian, Ubuntu, LinuxMint, e.t.c._

## Configuration

Modified files/folders include:

- `~/.bashrc`
- `~/.cc/` (_created on installation_)

## Troubleshooting

Post/browse issues here: <https://github.com/Loisa-Kitakaya/custom-linux-commands/issues>

## Licence

MIT License

Copyright (c) 2020 [Loisa kitakaya](https://github.com/Loisa-Kitakaya "Github")

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
