#!/usr/bin/python
import os
import sys
os.system("sudo apt-get install tmux")
os.system("git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle")
os.system("mkdir -p ~/.vim/colors")
os.system("cp ./darkburn.vim ~/.vim/colors")
os.system("sudo apt-get install exuberant-ctags")
#os.system("sudo apt-get install gvim -y")
os.system("sudo apt-get install vim-gnome -y")
os.system("sudo apt-get install zsh -y")
os.system("wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh")
os.system("chsh -s /usr/bin/zsh")
os.system("mkdir -p ~/.vim/undodir")
os.system("sudo apt-get install autojump")
os.system("git clone git@github.com:altercation/vim-colors-solarized.git ~/.vim/vim-colors-solarized")
os.system("cp ~/.vim/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/")
os.system("sudo apt-get install cscope")
#os.system(". ~/.zshrc")
#os.system(". ~/.bashrc")
#os.system(". ~/.profile")
#os.system(". ~/.tmux.conf")


print "\n\nNEXT ------------------BundleInstall in vim----------------------------"

print "commented code /home/xujx/.vim/bundle/ListToggle/plugin/listtoggle.vim  line: 42 - 44"
print "source you profile: zshrc bashrc profile tmux.conf"
