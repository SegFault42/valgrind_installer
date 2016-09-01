#!/bin/zsh

tar -xvf valgrind-3.11.0.tar.bz2
if [ ! -d "~/.brew/Cellar/" ];then
	mkdir ~/.brew/Cellar/
	mkdir ~/.brew/Cellar/valgrind/
	mkdir ~/.brew/Cellar/Valgrind/
	mkdir ~/.brew/Cellar/Valgrind/3.11.0
fi

cd valgrind-3.11.0
./configure --prefix ~/.brew/Cellar/valgrind/3.11.0
make && make install
cd ~/.brew/bin && ln -s ~/.brew/Cellar/valgrind/3.11.0/bin/valgrind valgrind

echo "alias valgrind=\"~/.brew/Cellar/valgrind/3.11.0/bin/valgrind\"" >> ~/.zshrc
source ~/.zshrc
