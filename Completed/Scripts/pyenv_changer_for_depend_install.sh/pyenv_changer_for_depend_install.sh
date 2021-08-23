pyenv_changer_for_depend_install.sh


#! /bin/bash

#To run this script, make sure to add executable permissions on it with:
# sudo chmod +x pyenv_changer_for_depend_install.sh

#This script is for the updated (2021) Kali linux virtual machine.


#python2 has been deprecated in favor of python3 on Debian repositories.
#To be able to switch between python2 and python3 environments, do the following steps:


#1) sudo apt  install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git


#2) curl https://pyenv.run | bash


#(If you are using ZSH add these lines to .zshrc)
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
# echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
# echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n eval "$(pyenv init -)"\nfi' >> ~/.zshrc


#3) exec $SHELL


#4) pyenv


#5) pyenv install 2.7.18


#Now you can run the script and install dependencies as needed (pip recommended).




#Change python environment to python3
#system


#Change python environment to python2
#2.7.18


while true; do
            read -r -p "Enter your choice of python3 with 3, python2 with 2, or E for exit. (2/3/E): " answer
            case $answer in
                    [2] ) pyenv global 2.7.18;
                            echo "Running python version.";
                            sleep 2;
                            clear;
                            pyenv version;
                            sleep 2;
                            clear;
                            echo "Running python2.";
                           python;
                           exit;;
                    [3] ) pyenv global system;
                            echo "Running python version.";
                            sleep 2;
                            clear;
                            pyenv version;
                            sleep 2;
                            clear;
                            echo "Running python3.";
                            python;
                            exit;;
                    [Ee]* ) exit;;
                    * ) clear;;
            esac
done
