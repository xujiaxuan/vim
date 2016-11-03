#!/usr/bin/python
import os
import sys
if len(sys.argv) == 1:
	p="proxychains "
else:
	p=""
os.system("sudo yum install tmux")
os.system(p+"git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle")
os.system("mkdir -p ~/.vim/colors")
os.system("cp ./darkburn.vim ~/.vim/colors")
os.system("sudo yum install exuberant-ctags")
os.system("sudo yum install gvim -y")
os.system("sudo yum install vim-gnome -y")
os.system("sudo yum install zsh -y")
os.system(p+"wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh")
os.system("chsh -s /usr/bin/zsh")
os.system("mkdir -p ~/.vim/undodir")
#os.system("sudo yum install autojump")
os.system(p+"git clone git@github.com:altercation/vim-colors-solarized.git ~/.vim/vim-colors-solarized")
os.system("cp ~/.vim/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/")
os.system("sudo yum install cscope")
os.system("sudo yum install sdcv")
os.system("sudo yum install stardict -y")
os.system("sudo mkdir -p /usr/share/stardict/dic")
os.system("tar -xjvf stardict-langdao-ce-gb-2.4.2.tar.bz2")
os.system("tar -xjvf stardict-langdao-ec-gb-2.4.2.tar.bz2")
os.system("tar -xjvf stardict-cedict-gb-2.4.2.tar.bz2")
os.system("tar -xjvf stardict-oxford-gb-2.4.2.tar.bz2")
os.system("tar -xjvf stardict-xhzd-2.4.2.tar.bz2")
os.system("sudo mv -u stardict-langdao-ce-gb-2.4.2 stardict-langdao-ec-gb-2.4.2 \
		stardict-xhzd-2.4.2 stardict-cedict-gb-2.4.2 stardict-oxford-gb-2.4.2 \
		/usr/share/stardict/dic/")
os.system("sudo "+p+" wget https://raw.githubusercontent.com/joelthelion/autojump/master/bin/autojump.zsh -O /etc/profile.d/autojump.zsh")
os.system("sudo sed -i 's/--add/-a/g' /etc/profile.d/autojump.zsh")
#ref:http://download.huzheng.org/zh_CN/ http://stardict-4.sourceforge.net/

#os.system(". ~/.zshrc")
#os.system(". ~/.bashrc")
#os.system(". ~/.profile")
#os.system(". ~/.tmux.conf")

#print "\n\nNEXT ------------------BundleInstall in vim----------------------------"
#
#print "commented code /home/xujx/.vim/bundle/ListToggle/plugin/listtoggle.vim  line: 42 - 44"
#print "source you profile: zshrc bashrc profile tmux.conf"
