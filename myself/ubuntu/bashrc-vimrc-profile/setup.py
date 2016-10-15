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
os.system("sudo apt-get install sdcv")
os.system("sudo apt-get install stardict -y")
os.system("tar -xjvf stardict-langdao-ce-gb-2.4.2.tar.bz2")
os.system("tar -xjvf stardict-langdao-ec-gb-2.4.2.tar.bz2")
os.system("tar -xjvf stardict-cedict-gb-2.4.2.tar.bz2")
os.system("tar -xjvf stardict-oxford-gb-2.4.2.tar.bz2")
os.system("tar -xjvf stardict-xhzd-2.4.2.tar.bz2")
os.system("sudo mv -u stardict-langdao-ce-gb-2.4.2 stardict-langdao-ec-gb-2.4.2 \
		stardict-xhzd-2.4.2 stardict-cedict-gb-2.4.2 stardict-oxford-gb-2.4.2 \
		/usr/share/stardict/dic/")
#os.system(". ~/.zshrc")
#os.system(". ~/.bashrc")
#os.system(". ~/.profile")
#os.system(". ~/.tmux.conf")


print "\n\nNEXT ------------------BundleInstall in vim----------------------------"

print "commented code /home/xujx/.vim/bundle/ListToggle/plugin/listtoggle.vim  line: 42 - 44"
print "source you profile: zshrc bashrc profile tmux.conf"
