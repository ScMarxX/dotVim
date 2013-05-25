#!/bin/bash
echo git submodule init
git submodule init
echo git submodule update
git submodule update

echo "pwd:$PWD"
echo mv ~/.vim{,.backup}
mv ~/.vim{,.backup}
echo ln -s $PWD ~/.vim
ln -s $PWD ~/.vim
echo mv ~/.font{,.backup}
mv ~/.font{,.backup}
echo ln -s ~/.vim/font ~/.font
ln -s ~/.vim/font ~/.font
echo mv ~/.vimrc{,.backup}
mv ~/.vimrc{,.backup}
echo ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc

echo ls -lah ~/.vim ~/.vimrc ~/.font
ls -lah ~/.vim ~/.vimrc ~/.font

echo cd ~/.font
cd ~/.font
echo sudo fc-cache -vf
sudo fc-cache -vf
