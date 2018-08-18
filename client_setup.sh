#!/bin/bash

sudo apt-get update
sudo apt-get install python git curl tmux vim -y
sudo apt-get install libc6-dbg -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
sudo pip install pwntools

cd ~/
git clone https://github.com/scwuaptx/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
cp ~/peda/.inputrc ~/
echo "DONE! debug your program with gdb and enjoy"

cd ~/
git clone https://github.com/scwuaptx/Pwngdb.git
cp ~/Pwngdb/.gdbinit ~/


