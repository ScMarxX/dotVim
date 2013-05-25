#!/bin/bash
echo =======================================
echo "Install Vundle and fonts"
echo "git submodule init"
git submodule init
echo "git submodule update"
git submodule update

echo "======================================="
echo "Link to ~/.vim ~/.vimrc && ~/.fonts"
echo "pwd:$PWD"

echo "mv ~/.vim{,.backup}"
mv ~/.vim{,.backup}
echo "ln -s $PWD ~/.vim"
ln -s $PWD ~/.vim

echo "mv ~/.fonts{,.backup}"
mv ~/.fonts{,.backup}
echo "ln -s ~/.vim/font ~/.fonts"
ln -s ~/.vim/font ~/.fonts

echo "mv ~/.vimrc{,.backup}"
mv ~/.vimrc{,.backup}
echo "ln -s ~/.vim/vimrc ~/.vimrc"
ln -s ~/.vim/vimrc ~/.vimrc

echo =======================================
echo "ls -lah ~/.vim ~/.vimrc ~/.font"
ls -lah ~/.vim ~/.vimrc ~/.fonts

echo =======================================
echo "update fonts"
echo "sudo fc-cache -vf"
sudo fc-cache -vf

echo =======================================
echo "Installing ctags && cscope"
sudo apt-get install -y ctags cscope

echo =======================================
echo "Installing other plugins"
vi < RunVundleInstall.txt
echo =======================================

