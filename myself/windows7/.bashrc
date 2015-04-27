# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.1-1

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
 if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
 fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
alias df='df -h'
alias du='du -h'
#
# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias mcp="cd D:/Documents\ and\ Settings/桌面/xujiaxuan/8第八周/MCP/mcpluowei" 
# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# a) function settitle
# settitle () 
# { 
#   echo -ne "\e]2;$@\a\e]1;$@\a"; 
# }
# 
# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
# cd_func ()
# {
#   local x2 the_new_dir adir index
#   local -i cnt
# 
#   if [[ $1 ==  "--" ]]; then
#     dirs -v
#     return 0
#   fi
# 
#   the_new_dir=$1
#   [[ -z $1 ]] && the_new_dir=$HOME
# 
#   if [[ ${the_new_dir:0:1} == '-' ]]; then
#     #
#     # Extract dir N from dirs
#     index=${the_new_dir:1}
#     [[ -z $index ]] && index=1
#     adir=$(dirs +$index)
#     [[ -z $adir ]] && return 1
#     the_new_dir=$adir
#   fi
# 
#   #
#   # '~' has to be substituted by ${HOME}
#   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"
# 
#   #
#   # Now change to the new dir and add to the top of the stack
#   pushd "${the_new_dir}" > /dev/null
#   [[ $? -ne 0 ]] && return 1
#   the_new_dir=$(pwd)
# 
#   #
#   # Trim down everything beyond 11th entry
#   popd -n +11 2>/dev/null 1>/dev/null
# 
#   #
#   # Remove any other occurence of this dir, skipping the top of the stack
#   for ((cnt=1; cnt <= 10; cnt++)); do
#     x2=$(dirs +${cnt} 2>/dev/null)
#     [[ $? -ne 0 ]] && return 0
#     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
#     if [[ "${x2}" == "${the_new_dir}" ]]; then
#       popd -n +$cnt 2>/dev/null 1>/dev/null
#       cnt=cnt-1
#     fi
#   done
# 
#   return 0
# }
# 
# alias cd=cd_func

#alias findt="find ./ |xargs grep --color " #递归查找文件内容包括pattern的文件及位置 ：find ./ | xargs grep --color <pattern>



#for git...................................................
	#git grep 搜索工作区的文本内容。
alias gs="git status" #状态
alias gitre="git reflog" #头指针变动
		#git reflog show master |head -5 实际上就是打开文件 ./git/logs/refs/heads/master中的内容
#log
alias gitlogog="git log --oneline --graph"  #一行
alias gitlog="git log"	#所有
alias gitlogformat="git log --pretty=format:\"%h-%an		:%s\"" #格式
alias gitfilelog="git log --pretty=oneline os"  #单个文件的修改历史
alias gitshow="git log change_id" #查看某次提交的修改
#stash clean
alias gitstash="git stash" #中断当前编辑并保存，同时将工作去恢复到上次提交
alias gitstashap="git stash apply" #恢复上次stash的内容
alias gitstashlist="git stash list" #列出stash stack
alias gitstashapply="git stash apply " #应用指定版本     :git stash apply stash@{<n>}
alias gitstashpop="git stash pop "  #应用指定版本并删除 ：git stash pop stash@{<n>}
alias gitstashdro="git stash drop " #删除存储  ：git stash drop :git stash drop stash@{<n>}
alias gitstashclear="git stash clear" #清空存储
alias gitclean="git clean -fd" #清除未跟踪文件
		#git clean -nd #可以查看哪些文件会被删除
#branch
alias gitbradd="git branch " # add new branch 不切换分支  :git branch <newbranchname>
alias gb="git branch" #list branch
alias gitbrr="git branch -r" #list branch 包括远程与本地
alias gitbrdel="git branch -d" # 删除分支 :git branch -d <branchname>
	#git branch -a 查看远程分支
#add
alias gitad="git add" #添加到暂存区  :git add <file or dir>
	#git add -u #将所有修改过的文件加入暂存区
	#git add -A #将本地删除文件与新增文件都加入暂存区
#commit
alias gitco="git commit"
alias gitco-m="git commit -m " #提交 加一个提交信息参数		:git commit -m "<info>"
alias gitco-amend="git commit --amend" #增量提交
		#注意每行不要超过固定长度的文字，否则会出现修改提交日志失败
alias gitco-a="git commit -a" #添加所有修改 暂存与未暂存都add 再commit	:git commit -a "<info>"
#reset
alias gitreset="git reset" #分支头指针移到某处 要加个参数 :git reset <index>
alias gitresethard="git reset --hard " #分支头指针与暂存本地都改变。:git reset --hard <index>
alias gitresetcachefile="git reset HEAD " #取消暂存  :git reset HEAD <filename>
#checkout
alias gc="git checkout" #再一个变量或分支名
alias gitcheckfile="git checkout file" #使用版本库替换工作区文件  也就是撤销未提交的修改   #应该是从暂存区取出文件
			#gut checkout --filename #如上面这条的注释
			#git checkout branch  --filename #用branch指向的提交的文件提花暂存区与工作区的文件。
	#撤销java文件的所有提交  git checkout *.java
	#撤销所有提交	git checkout .
alias gitcheckbranch="git checkout -b " # 创建并切换分支 :git checkout -b <newbranchname>
#rebase pull push
alias gitrebase="git pull --rebase" #跟新本地到最新
	#如果有冲突，还要执行:git rebase --continue
alias gitpush="git push origin HEAD:refs/for/training-2013" #推送到远程
	#通过git branch -a 来替换training-2013的值
#revert
alias revertcommit="git revert "	#加commit id   git revert <commitid>
#diff
alias gitdiff="git diff HEAD^ --check" #提交前的检查是否有空格,tab 错误。 或者成为红点检查
alias gitdiffgz="git diff" #工作区 暂存区
	#git diff <file> 比较当前文件与暂存区文件的差异
	#git diff <$id1> <$id2> 比较两次提交的区别
	#git diff <branch1>..<branch2> 两个分支进行比较
	#git log git -p 查看某次提交的详细修改内容（diff）
	#git log git -p <file>	查看某次提交的对某文件的详细修改内容
alias gitdiffzb="git diff --cached" #暂存区 版本库
alias gitdiffgb="git diff HEAD" #工作区 版本库
alias gitdiffgl="git diff" #工作区与某个分支  :git diff <branchname>
alias gitdiffgbfile="git diff -- " #工作区文件夹与版本库  :git diff -- <dirname>
alias gitdiffonly="git diff HEAD |grep old -v |grep new -v|grep  diff -v"
#diff-patch
alias gitdiffmast="git diff mast > mast.patch" #对应将工作区中的内容与mast分支的内容diff到mast.patch文件。
alias gitapply="git apply mast.patch" #对应使用mast.patch文件对工作区中的内容进行打补丁。运行这个之前可以先：git checkout mast。
alias gitformat="git format-patch -M master " #自动生成00000.patch.
alias gitapplyformat="git am 00000.patch" #使用patch对工作区中的内容进行打补丁。
	#测试补丁是否成功 git apply --check patchFileName

 #patch
alias gitpatch="git format-patch  -o . -1"	#就最后一个提交作成一个补丁。 -2:最后两个提交作成两个分开的两个patch -3:左后三个提交作成分开的三个提交。以此类推。
	# gitpatch>->----o  ./  是输出的路径，输出的文件名自动选择提交的log。
alias patchfile="patch <originalfile> <patchfile>" #需要输入两个变量 源文件：originalfile 补丁文件：patchfile 在为源文件打补丁前，建议备份原文件cp a.txt a.txt.history
	# patchfile>>----o  <newfileafterpatchname> 这样源文件就不会被删掉
	# patchfile>>----r:recursion include directory ; -N :valid delete or create file ;-p<num> relative path ;-E if empty then delete ;-R now is new to recover to all-
	# patchfile path in old direction and run    patch -p1 < <file.patch>
#clone & checkout
alias gitclone="git clone ssh://xujiaxuan@git.tp-link.net:29418/training/teamwork" #在本目录下克隆远程裸版本库 参考：http://mobile.tp-link.net/redmine/projects/linux/wiki/Mcu_download
alias gitcheckoutremote="git checkout -b mybranch origin/training/teamwork" #创建本地分支跟踪远程分支 
alias scpp="scp -P 29418 -p yourname@git.tp-link.net:/hooks/commit-msg .git/hooks/" #获取gerrit钩子

#clone & checkout
alias gitclone="git clone ssh://xujiaxuan@git.tp-link.net:29418/training/teamwork" #在本目录下克隆远程裸版本库
alias gitcheckoutremote="git checkout -b mybranch origin/training/teamwork" #创建本地分支跟踪远程分支

#rm
	#git rm <file> 从版本库中删除某个文件
	#git rm <file> --cached 从版本库中删除某个文件，但不删除文件。
	#git rm --cache 从cached里面去除 应该用git checkout 文件 实际应该是
		# git stash  然后执行git stash apply
		# 更好的方法是git reset HEAD^1
	#
#git 权威指南
	#目录
		#git rev-parse --git-dir #获取当前所在项目的版本库.git目录的位置
		#git rev-parse --show-toplevel #获取工作区的根目录
		#git rev-parse --show-prefix #相对根目录的相对目录
		#git rev-parse --show-cdup #到达工作区的根的深度
	#配置
		#git config -e #本项目的配置文件目录
		#git config -e --global #打开/home/xujiaxuan/.gitconfig配置文件
	#提交
		#git commit --allow-empty -m "sss" #允许没有任何修改就提交 默认没有修改不进行提交
		#git commit --amend --allow-empty --reset-author 重新提交，改正作者与提交者的错误信息。
	#日志
		#git log --stat #查看文件变更统计
	#暂存区
		#git ls-files -s				#查看暂存区的目录树
		#git ls-tree -l <提交id>或者HEAD	 #产看目录
	#cat-file
		#git cat-file -p <提交>			 #查看提交内容		某个提交有很多blob对象，可以选择一个blob对象执行这条命令，然后就可以得到想要的数据
		#git cat-file -t <提交>			#查看提交类型
		#git log commitid -p			#查看某次提交的全部内容
	#git status -s 查看具体的状态，包括在本地没上传，在暂存区，没提交等
		#git status -s -b #显示包括branch
		#git status --ignored -s #包括被忽略的文件
		#git add -f hello.h #添加-f用于真正添加被忽略的文件
	#git mv beforeFileName afterFileName
		#用于实现文件名字更改。
	#git rev-parse
		#git rev-parse --symbolic --glob=refs/*	#查看所有引用
		#git show-ref #查看所有运用
	#提交
		# ^父提交 ~3 连续3个^ ^3^2 父提交的第三个的父提交的第二个
	#提交
		#git rev-list --oneline A #该版本开始的所有提交。
	#比较
		#git diff --word-fidd # 逐字比较
	#文件追溯
		#git blame
		#git blame filename #文件追溯 分别是最早是什么版本引入，由谁引入
		#git blame -L 6,+5 filename #只显示第6行开始的连续5行
	#二分查找谁引入错误的
		#git bisect bad 当前坏提交
		#git bisect good G	之前的某个commit id是号提交
		#运行git describe ....然后。。。
	#本地克隆 其中 new/project为项目名
		#git clone ssh://192.168.145.157:29418/new/project.git fourDevelopmentEmmet #远程机子
		#git clone /path/to/my/workspace/demo /path/to/my/workspace/demo-backup #本地机子
			#需要能够push 需要在项目 .git/config里面添加[receive]    denyCurrentBranch = ignore
			#git pull origin master & commit &  git push origin HEAD:refs/for/master
			#git push origin refs/heads/master 或者git push origin master
	#合并 炼选 衍合（交互式衍合）冲突解决 详见 G:\xujiaxuan\3第三周\周四\Git协同模型(下).ppt	
		# 炼选 假设有A B两个分支，要在A上做一些已经在B上做过的提交。方法便是：git checkout A ; git cherry-pick id(commit in B);git cherry-pick id(the same)
		# 合并 将A分支的提交合并到B分支 git checkout B; git merge --squash A ; git commit 
			# 合并的选项：--ff 快进式合并 --no--ff 非快进式合并 --squash 压缩合并
		#衍合 
			#嫁接	git rebase master topic 将topic分支的所有提交 重新提交到master
				#git rebase --onto master develop topic   将develop到topic的所有提交都重新提交到master分支上。
			#交互式衍合
				#通过衍合命令添加 -i参数实施
				#修补提交
				#拆分提交
				#调整提交顺序
				#删除提交
				#example
					#pick fc62e55 Add file_size 
					#pick 9824bf4 Fix little thing
					#pick 21d80a5 Add number to log
					#pick 76b9da6 Add the apply command
					#pick c264051 Revert "Add file_size
						#pick 应用次提交 
						#reword 应用此提交，可以修改提交说明
						#edit - 应用此提交，但应用后会暂停衍合以便用户使用 git commit --amend 操作修改此提交，然后执行 git rebase --continue 命令继续衍合
						#squash - 该提交会与前面的提交压缩为一个
						#fixup 类似动作 squash，但此提交的提交说明被丢弃
						#可以通过修改文件中各个提交的先后顺序改变最终衍合后提交的先后顺序
						#可以通过删除行使得该提交不会被应用

			#用于处理衍合冲突
				#git rebase --continue 冲突解决，继续衍合
				#git rebase --skip  跳过当前提交 
				#git rebase --abort 终止衍合，回到之前的分支
	#快进式提交
		#指推送的本地版本库的提交是建立在远程版本库需要分支的现有提交基础上的。即远程版本库相应分支的最新提交是本地版本库最新提交的祖先提交。
		#git pull --rebase = git fetch + git rebase
		#git pull = git fetch + git merge
	#merge
		#总分支develop 自己添加了一个新分支 feature_branch
			#使用git checkout develop & git merge --squash feature_branch & git commit 来将feature_branch 添加到develop分支 最后详细的写下提交日志
			#因为使用--squash 将不会把前面的分支的日志带过来。 没有该参数则会带过来
	#clone
		#git clone  ../ht2600-2/ .   
		#git source destination
#end git ...................................................

alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias bashrccat="cat ~/.bashrc"
alias bashrcInclude="cat ~/.bashrc | grep -n -B 2 -A 2"	#-B -A before line after line
alias s="bashrcInclude"
alias upbashrc="source ~/.bashrc"
alias upvimrc="source ~/.vimrc"


#find path
alias findr="find |grep "	#递归查找文件并显示。然后查找文件名称符合pattern 的文件 :find | grep <pattern>
alias findt="find ./ |xargs grep --color -i " #递归查找文件内容包括pattern的文件及位置 ：find ./ | xargs grep --color <pattern>
#find file name
alias findrr="find ./ -name"
alias findtt="find ./ -name |xargs grep --color -i -Rs" #-R: 如果是文件夹，则便利文件夹下的所有文件 -s:去掉不可读的出错消息"
alias findttt="findttt.sh * " #findttt.sh filename  express

alias src="cd /home/tplink/amss.history/M8625SSNSKMLYM/"
alias srchistory="cd /home/tplink/amss.history/M8625SSNSKMLYM/"
alias amssimg="cd /home/tplink/amss.history/M8625SSNSKMLYM/modem_proc/build/ms/bin/USNEKQLY"

#new add 
alias s10="ssh -l xujiaxuan 192.168.145.156"
alias s12="ssh -l xujiaxuan 192.168.145.157"
alias main="ssh -l tplink 192.168.145.1"
#cd
alias c="cd"
#vim
alias v="vim "
alias shistory="history|grep"

#windows7 git
#右键 git init here,右键 git add all file ,进入bash命令 git commit -m "init here",git reset --hard恢复

#alias oem="fastboot oem fastboot"
#alias factory="fastboot oem factory"
alias reboot="fastboot reboot"

alias m="mintty"
alias e="exit"
alias pwdd="echo E:/Cygwin-1-7-20"
alias pwddd="echo `pwdd``pwd`"
alias pwd0="pwddd|sed 's/\//\\\\\\\\\\\\\\\\/g'"
alias mypwd="echo explorer /e,`pwd0`|bash" # or in shell do "echo explorer /e ,`pwdd``pwd`|sed 's/\//\\\\/g'|bash
alias myexp="exp.sh E:/Cygwin-1-7-20 "
alias exppp="explorer /e,y:\\\\"

#alias fboot="fastboot flash boot boot.2knand.img"
#alias frecover="fastboot flash recovery recovery.2knand.img"
#alias fuserdata="fastboot flash userdata userdata.2knand.img"
#alias fsystem="fastboot flash system system.2knand.img"
#alias fpersist="fastboot flash persist persist.2knand.img"
#alias fall="fboot && frecover && fuserdata && fsystem && fpersist && reboot"
#alias setpropdebug="adb shell setprop persist.usb.mode debug_rndis"
#alias setpropdiag="adb shell setprop persist.usb.mod debug_diag"
#alias setpropuser="adb shell setprop persist.usb.mode user"
#alias rmrecovery="adb shell busybox rm -rf /cache/recovery"

alias cdfas="cd /c/lte/archive/output/HLOS/LTE_MODULE_UN_V1_Micron_debug/mdm9625"
alias oem="fastboot oem fastboot"
alias fboot="fastboot flash boot mdm-image-boot-mdm9625.img"
alias fsystem="fastboot flash system mdm-image-mdm9625.yaffs2" 
alias fuserdata="fastboot flash userdata mdm9625-usr-image.usrfs.yaffs2"
alias frecovery="fastboot flash recovery mdm-recovery-image-boot-mdm9625.img"
alias frecoveryfs="fastboot flash recoveryfs  msm-mdm-recovery-image-eglibc-ipk-20140904-mdm9625.rootfs.yaffs2"
alias fall="oem && fboot && fsystem && fuserdata && frecovery && frecoveryfs && reboot"

#adb pull adb push
alias adbs="adb shell"
alias adbk="adb kill-server"
alias adblk="adb reboot bootloader"

alias c="cd "
alias CD="cd "
alias PWD="pwd "
alias remountsystem="adb shell mount -o rw,remount /system"
alias shoujichmod="adb shell chmod 777 /system/lib/modules/memtest"
alias lstee="ls 2>&1|tee -a ~/mylog/shell_log.txt " #附加具体的值到后面

alias movepower="cd /home/tplink/HT46R064B" #master TR861_10400E MASTER;	MOVEPOWER DEVELOP
alias V="v"
alias findc="find . -name "*.c"|xargs grep --color -i"
alias findh="find . -name "*.h" |xargs grep --color -i"

#vim vim `findrr tools` 而不用使用xargs vim 否则退出时无法输入
#vim Netrw c           切换vim的当前工作目录为正在浏览的目录
#vim e ./ 可以返回到文件所在的目录
#		目录浏览模式下使用bv可以自动打开一个具体的目Tu
#		使用p可以在其他窗口打开该文件
#ctags
#在相应的目录运行ctags -R 可以产生tags文件
#在vim中设置:set tags=/home/xujiaxuan/mr1xu-dev/tags
#直接查找某个字符 vim -t type
#ctrl+] 跳转到定义出。 ctrl+t还回。 ctrl+]实际上就是cs find g [tag] 定义出
#ctrl+shift+a +s 实际上就是搜索符号，所以包括定义，引用，调用等
#文件编辑模式下的自动补全 ctrl+n

#taglist
#vim-taglist	Tlist	列出
#		左边选择一个按enter则跳转
#		左边选择一个按space则显示定义格式的完整写法。

#ibus
#ibus切换汉字 ctrl+alt+space 两次 首先运行ibus-setup

#vim
#在vim打开一个vim :!mintty  &
#vim中前进与后退 ctrl+i ctrl +o

#explorer
#到目录 tl , 聚焦函数，sv e. 或者ctrl+o  双击tags里面的可以定位到具体的函数

#cscope  安装: sudo apt-get install cscope
#cscope 先运行 find -name '*.c' >cscope.file	#从定向后的文件再cscope.file  所以之后只用cscope -Rbkq -i cscope.file  最后也是生成cscope.out文件
#不要运行find . -name '*.c' >cscope.file 否则相对路径下的quickfix 不能用。要用find `pwd` -name '*.c' 好像find -name '*.c' >cscope.file也可以
#运行cscope -Rbkq 产生三个文件 cscope.out ,cscope.in.out,cscope.po.out 参考 http://linux.chinaunix.net/techdoc/desktop/2008/09/26/1034781.shtml
# 在vim中执行 :cscope add /home/xujiaxuan/mr1xu-dev/cscope.out
#显示是否关联  通过下面的命令可以检查数据库连接的存在。 :cscope show
#: cs find s ---- name 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
#		:cw 可以列出窗口 点击该窗口 滚动窗口
#		定义了快捷键后现在可以直接按比如：ctrl+shift+2(ctrl+@)+s
#		:此时 :cn 后一个  cp:前一个  
#：cs find g ---- 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
#：cs find d ---- 查找本函数调用的函数：cs find c ---- 查找调用本函数的函数
#：cs find t ---- 查找指定的字符串
#：cs find e ---- 查找egrep模式，相当于egrep功能，但查找速度快多了
#：cs find f ---- 查找并打开文件，类似vim的find功能/  可以直接使用正则表达式，比如led，会打印包含这些字符的文件让你选择
#：cs find i ---- 查找包含本文件的文件
#: cs Find c ---- 查找调用本函数的函数

# 更多帮助在vim末行命令模式下输入cs 或 cscope获得帮助信息。可以写个脚本

#ubuntu设置固定ip  http://blog.csdn.net/kellycan/article/details/6325064  /etc/net/network/interfaces文件
#alias whoi="echo `ifconfig |grep "inet addr"|awk '{print $2}'|sed 's/:/ /g'|    awk '{print $2}'|grep 192`"

#winmanager 安装目录在/usr/local/share/vim/vim72 参考http://www.cnblogs.com/xiaoya901109/archive/2012/04/13/2445995.html
#vim 输入 ：WMToggle
#s10/usr/share/vim/vim72
# sv `find . -name queuework.h`
# vim文件中 wm实现快速的三窗口 f6 next f7 pre
# 颜色软件 xterm-color-table.vim.tar.gz	语法高亮修改文件：/usr/share/vim/vim72/syntax/c.vim  xujiaxuan add end xujiaxuan
#光标在一个单词上，按 gd ，会高亮显示此文件中所有此单词，并跳到定义处,可以使用next的n 以及pre的shift+n 即 N:：；按 *(shift+8) 键会跳到下一个；按 #(shift+3) 键会跳到上一个。
#e `pwd`  在vim中打开当前目录

#supertab 自动补全直接按tab键 与ctrl+n类似

#添加root帐号sudo passwd 当前秘密 root 密码 再次确认
#允许root登入 gksu /usr/sbin/gdmsetup

#vim中的全字匹配：选择一个单词然后输入 shift+* 正则表达式则详见 s grep里面的 \< 与 \> 

#wc 统计为：行数 word数 字节数
#findr .|wc -l 显示文件数
#多文件代码总数(最后一行)：findr .|xargs wc -l

alias pb52="cd /home/tplink/ht5200/HT46R064B"

#tmux
#输入命令tmux split-window -d 水平新建
#创建一个窗口ctrl+b+c
#切换至上一个窗口ctrl+b+p
#切换至下一个窗口ctrl+b_n
#将当前面板分为上下两块：ctrl+b+"
#将当前面板分为左右两块：ctrl+b+%	:ctrl+b 放开+% 竖直新建
#显示面板编号:q
#在当前窗口中选择下一面板:oi
#移动光标以选择面板:方向键
#向前置换当前面板  {
#向后置换当前面板  } //在数字下面的序号
#Alt+o  逆时针旋转当前窗口的面板 
#Ctrl+o  顺时针旋转当前窗口的面板   在同一个bash的多个面板上面移动
#	输入命令tmux split-window -d 水平新建
#	ctrl+b 放开+% 竖直新建
#	ctrl+b （两个都放开) o 切换
#	ctrl+b  （ctrl不放，b放） o窗口位置调整。
#	ctrl+b  ctrl up down left right 修改大小。
#	ctrl+b left right 切换。
#	ctrl+b ctrl不放，可以left right一直按。


#vim中去掉
 #vim中执行：%s/^M$//g   
#：ctrl+v ctrl+m

#openfile.sh 说明
#op filename 其中filename可以是使用正则表达式 比如 led*.c 可以打开 led_display.c
#可能打开多个文件，可以使用n next N pre
#使用q时 会提示还有一个文件，或多少个文件还在编辑状态，q的那个文件已经关闭。可以直接使用q!关闭多个文件。

#quickfix的使用
#1 vim下使用 :make 进行编译
#2 :set makeprg=gcc\ -Wall\ -ohello\ hello.c  上面的命令会把hello.c编译为名hello的可执行文件，并打开了所有的Warnning。如果编译命令中有空格，需要使用'\'对空格进行转义，上面的例子就使用了'\'转义空格。

#qgit
#git 图像化工具 qgit的使用 执行:qfit .
#使用 qgit .就可以了看到：提交树 提交日志 提交影响的内容 提交影响的文件 提交人
#右键 view patch具体的补丁内容
#针对印象的文件 右键 view file 可以查看到该文件的提交日志。
#针对一个patch 可以查看该patch 针对parent HEAD 复制到选框里面（具体change-id） 等的diff

#具备gdb全部功能的可显示调试工具 :ddd  编译时添加-g 调试时可以自动关联到源码

#chmod [u g o a] [+ - =][r w x] [1 2 4] 详见man
#chown example: chown root /u

#复制 只需要按住shift + 右键就可以进行赋值了

#多行移动 1、v 2、移动鼠标到相应位置 3、按住shift+<

#in	产生一个软连接a 到c ln -s c a
#	产生一个硬链接到b 到c ln c b

#文件搜索 locate
	#locate youre_file_name
#rm -rf 递归 强制 删除文件及文件夹

#指定时间后执行某个任务 at 
	#at 5pm+3 days /bin/ls 三天后的下午5点执行/bin/ls
	#先输入 at 5pm + 3 days enter /bin/ls > /home/xujiaxuan/f ctrl+d 
#cal 日历 时间同步 关闭虚拟机，然后在在虚拟机的.vmx文件中找到：tools.syncTime = “FALSE”  

#周期性任务使用一下命令来执行
	#每月每天每小时的第 0 分钟执行一次 /bin/ls:   0 7 * * * /bin/ls
#date +%D

#sleep 1m;date  显示目前时间后延迟 1 分钟,之后再次显示时间

#time

#chsh 修改当前使用者的登入shell

#finger root 或者 finger xujiaxuan
	#查询用户资料
	#包括登入名 登入目录 登入shell 最后一次登入 计划 右键

#last 显示系统开机以来每次登入的讯息

#login 可以重复登入 ，也可以多用户登入

#mail aliases 

#mesg //与这些有关： talk write wall
	#决定是否允许其他人传讯息到自己的终端机介面
	#mesg n 
	#mesg y
# talk 
	# talk person [ttyname]
	#person:预备对谈的使用者帐号,如果该使用者在其他机器上,则可输入 person@machine.name
	#结束 ctrl+c
#wall 
	#会将讯息传给每一个 mesg 设定为 yes 的上线使用者
#write
	#write name enter mesage
#kill
#nice
	#nice -n 1 ls  将 ls 的优先序加 1 并执行
#ps -au//自己
	#-aux //自己及他人的所有进程
#pstree
	#将所有行程以树状图显示
	#  gnome-terminal─┬─bash───su───bash─┬─he
    #                 │                  └─pstree
    #                 ├─bash───login───bash───he

#renice
	#重新指定一个或多个行程(Process)的优先序
#top
	#显示 process 的动态
#skill
	#发送信号给正在执行的程序。
#expr
	#字符长度 expr length "asldkjfkasd"
	#数字商数 expr 14%9
	#指定位置抓取字符串 expr substr "this is a test" 3 5  当然也可以 echo "this is a test"|xargs -i  expr {} 3 5 从3开始的5个字符 
	#去除字符串中的第几个字符 expr index "test" e 2

#tr
	#大小写替换、去掉不想要的字符串、取代字符串
#clear 清楚屏幕
	#ctrl+l
#reset,tset  设定终端的状态。
	#reset 其实和 tset 是一同个命令,它的用途是设定终端机的状态
#lpd  是一个常驻的印表机管理程式,它会根据 /etc/printcap 的内容来管理本地或远端的印表机
#lpq 显示列表机贮列中未完成的工作
#lpr 将档案或是由标准输入送进来的资料送到印表机贮列之中
#lprm 将一个工作由印表机贮列中移除

#awk
	#ls |xargs -n 3 |awk '{print $2}'   列出本目录的所有文件 用空格隔开（xargs后无换行） 每次以三个传给awk 只打印每次的第二个
	
#sed
	# sed "s:bc:xu:g" -i filename 表示 将filename文件里面的bc字符串替换成xu字符串
	#详见sed命令
#cut
	# cut -b 7 从第一个开始数的第7个字符
	# cut -b 1-7 从第一个开始数到第7个字符 echo "hello"|cut -b 1-3 结果为:hel

#xargs 
	# ls |xargs echo 打印
	# ls |xargs -n 2 echo  以2个一行方式打印
	#各个参数的意义
	#-i 表示 find 传递给xargs的结果 由{}来代替 
	#-I 我认为是和i差不多，可以这么认为 -i可以用-I {} 来代替 
	#-p 交互式提问y来确认命令的每次执行。 
	#-t 在执行前回显各个command 
	#xargs本身的作用是去除换行符，都转换为空白符。 只是用管道不会去除换行符 所以可以添加  |xargs|
#redmine 查询
	#owner:xujiaxuan
#diff
alias diffu="diff -u -c" #name1 name2 以第一个为标准 如 -：删除 +：添加 diff -u <name1> <name2>  -c:output line -u:output standard
alias diffr="diff -u -r -c " #path1 path2  :diff -r -u <path1> <path2>  if not with -r but with path will just in deepth of one.  
alias diffuN="diff -uN" #output near the same as git diff
alias diffup="diff -up" #目前内核社区使用的名字
	#如果补丁包含添加新文件，或者在多个目录下则执行diff -uprN
alias diffuprn="diff -uprN"
	#文件夹 对比 diff -c -a -b -x *.bak -x *.log A B > AB.diff #-x 表示不进行对比的
	#非递归：diff -upN -x cscope.* -x tags adb.new ad

#patch
alias gitpatch="git format-patch  -o . -1"  #   #就最后一个提交作成一个补丁。 -2:最后两个提交作成两个分开的两个patch -3:左后三个提交作成分开的三个提交。以此类推。
	#git format-patch v1 .. HEAD 从v1开始的历次提交都逐一导出为补丁文件。
    # gitpatch      -o  ./  是输出的路径，输出的文件名自动选择提交的log。
alias patchfile="patch <originalfile> <patchfile>" #需要输入两个变量 源文件：originalfile 补丁文件：patchfile 在为源文件打补丁前，建议备份原文件cp a.txt a.txt.history 
    # patchfile     -o  <newfileafterpatchname> 这样源文件就不会被删掉
    # patchfile     -r:recursion include directory ; -N :valid delete or create file ;-p<num> relative path ;-E if empty then delete ;-R now is new to recover to all 
    # patchfile path in old direction and run    patch -p1 < <file.patch>
    # diff in patch gerrit choose diff base patch

#vim
alias v="vim "
#clear 清屏
alias clearp="clear " # 或者使用ctrl + l
#apt get
alias acs="apt-cache search "
alias agi="sudo apt-get install "
alias aupg="sudo apt-get upgrade"
alias aupd="sudo apt-get update"	#you can use: "man apt-get | grep update"  for more  help
#xargs
	#xargs  expmple ls |grep -v delete_test|xargs -i cp -r {} delete_test} -i:replace the {}  multi pattern usr grep pattern | grep pattern1 |grep pattern2
	# xargs mv{} {}.old
#tail with refresh
alias tailf="tail -f " #watch file in the last num line
#ls -R |grep 
alias lsR="ls -R | grep "
#grep pattern ?:one character *:any character []:in a region 2>err 1>output 0 input
#grep
alias grepP="grep "
      #grep ^ :line head
      #grep # :line end
      #grep . :not '\r' but other (one characher)
      #grep []
      #grep [^]
      #grep \(..\) 标记括号里面
      #grep \< word head
      #grep \> word end
      #grep x\{m\} x 出现m次 如 ‘o\{5\}’ 5个o
      #grep x\{m,\} x 至少出现m次 如 ‘o\{5\}’ 5个o   
      #grep x\{m,n\} x 至少出现m次 最多n次
      #grep \w 文字于数字符号
      #grep \b 单词锁定符号 如 '\bgrep\b' 只匹配grep
	  #grep 不包含某个字符串 -v string 作为参数

#ssh
alias ss="ssh -l xujiaxuan 172.30.130.183"
#cd 
alias c="cd "
alias CD="cd "
alias PWD="pwd "
alias shistory="history |grep "
alias maketee="make -j4   DERIVED_MODEL=TR781V2 2>&1 |tee -a ~/mylog/shell_log.txt"
alias choo="choosecombo debug tr781 eng"
alias sourceenviron="source build/envsetup.sh"
alias onekeymake="src && sourceenviron && choo && maketee" #one key make
alias tailmylog="tail -f ~/mylog/shell_log.txt" #watch the log
alias e="exit"
#tar & zip
alias tar_xtg="tar -xzvf" #tar -xzvf abc.tar.gz
alias tar_xt="tar -xvf" #tar -xvf abc.tar
alias tar_ctr="tar -czf" #tar -czf abc.tar.gz *.jpg and so on
alias tar_ct="tar -cvf" #tar -=cvf abc.tar  *.jpg and so on
#zip                                                          
alias zipF="zip FileName.zip DirName" #若果是目录使用-r参数
alias unzipF="unzip FileName.zip"

#wifi
alias wifi="cd /home/xujiaxuan/androidall/wifi"
alias g="grep"
alias s10="ssh -l xujiaxuan 192.168.145.156"
alias s12="ssh -l xujiaxuan 192.168.145.157"
alias main="ssh -l tplink 192.168.145.1"
#alias whoi="echo `ifconfig |grep "inet addr"|awk '{print $2}'|sed 's/:/ /g'|awk '{print $2}'|grep 192`"
alias sb=". ~/.bashrc"
alias pb52="cd /home/xujiaxuan/ht5200/HT46R064B"
alias op="openfile.sh"

#ll   some more ls aliases
alias ll='ls -alF'
alias la='ls -A'       
alias l='ls -CF'

#块缩进+块删除
#	一般模式：shift+v  ctrl+x 删除掉。
#	一般模式：v	ctrl+x 删除掉一个块。
#    快捷删除一个个空格的话，试试选中一行shift+v，同时按 < 或 > 缩进或取消段缩进（<>要按两下）
#    空格删乱了的话，shift+v选中一段代码，放下再按 = 格式化代码（对齐） shift+v后可以通过上下方向键进行多行选择  也可以使用v    然后方向键来选择。

#vim普通模式的删除与替换
#	x删除光标所在的字符。
#	r：替换当前字符
#	R:replace模式 此时的backspace是撤销。

#repo的使用方法：http://blog.csdn.net/sunweizhong1024/article/details/8055372
#man manpages-zh
	#sudo apt-get install manpages-zh
	#man -M /usr/share/man/zh_CN
	alias cman="man -M /usr/share/man/zh_CN"

export PATH=$PATH:~/bin

#vim 复制 寄存器
	# "+y  “+p
	# 方法：复制：按住shift键不放，再依次按下" + ，放开shift键，最后按下 y。 粘帖：同上，最后y改成p。

#apt-file  用于查找包所含有的文件盒安装的位置
	#apt-file update 更新文件库
	#apt-file search file_name 查找文件存在于哪些软件包中
	#apt-file list package_name 显示该软件包的文件。

#vimdiff
	#使用方法 vimdirr file1 file2
#查看一个进程打开的文件数：
	#adb shell ls -l /proc/[pid]/fd

alias gst="git status"
alias gbr="git branch"

alias oe-core="cd /home/xujiaxuan/lte/lte/apps_proc/oe-core"
alias lte="cd /home/xujiaxuan/lte/lte"
alias kernel="cd /home/xujiaxuan/lte/lte/apps_proc/kernel"
alias gch="git checkout"
alias glog="git log"
alias apps="cd /home/xujiaxuan/lte/lte/apps_proc"
alias gaddu="git add -u"
alias gco="git commit -m"
alias gcoamend="git commit --amend"

#find
	#find  ./  * -cmin 190 对文件的修改时间时再190分钟前左右。 其它参考cman find
#c.vim
	#/usr/local/share/vim/vim72/syntax/c.vim
	#保存到 ~/.vim/syntax/c.vim即可

#vim
	#快速关闭 vq vwq
	#nmap vq :q!<cr>    
	#nmap vwq :wq!<cr>
#内核线程与用户进程	 http://blog.chinaunix.net/uid-20385675-id-1691437.html
	#ps -ef
		#有[]的为内核线程 否则为用户进程。
#scp xujiaxuan@192.168.145.156:/home/xujiaxuan/androidall/system/core/adb/server .

#vim 光标移动：
	#    k
	# h    l
	#   j
	#半页上:ctrl+d
	#半页下:ctrl+y
	#全页上：ctrl+b
	#全页下：ctrl+f
	#a 光标后
	#A 行尾
	#i 光标前
	#I 行前（有字符的行前） 0行前
	#o 新建一行后
	#O 新建一行前
	#G:/xujiaxuan/4第四周/vim帮助文档的使用.txt网址导航里面有
#repo
	# repo forall  -c git reset --hard
#scp
	#scp -r out   xujiaxuan@192.168.145.156:/home/xujiaxuan/androidall 
#top命令
	#http://www.cnblogs.com/calpur/p/3820811.html
#查看某个进程的线程数
	#ps -eLf |grep mysql |wc -l	#比如mysql
	#或者通过 ls /proc/1432/task | wc -l 来查看某个进程的线程数	其中1432是mysql的进程id
#网络客户连接数  或者是连接本机的某个端口的tcp数
	#netstat -n |grep tcp |grep 22|wc -l
alias html="vim /cygdrive/c/inetpub/wwwroot/index.html"
#vim 复制
	#shift+v j k y 同一个shell使用y
	#不同的shell使用shift+insert
	#同时执行 vim --version |grep xterm_clipboard 查看编译是否已经加了exterm_clipboard选项
	#或者安装 vim-gui-common 软件包

#VIM的列编辑操作
	#删除列
	#1.光标定位到要操作的地方。
	#2.CTRL+v 进入“可视 块”模式，选取这一列操作多少行。
	#3.d 删除。
	# 
	#插入列
	#插入操作的话知识稍有区别。例如我们在每一行前都插入"() "：
	#1.光标定位到要操作的地方。
	#2.CTRL+v 进入“可视 块”模式，选取这一列操作多少行。
	#3.SHIFT+i(I) 输入要插入的内容。
	#4.ESC 按两次，会在每行的选定的区域出现插入的内容。
alias catdevices="sudo cat /sys/kernel/debug/usb/devices"
#vim 复制代码格式问题：http://www.cnblogs.com/jianyungsun/archive/2012/07/31/2616671.html
	#复制前:set paste 复制后 set nopaste 可以添加快捷键映射
	#ubuntu的配置使用ctrl+c 然后使用ctrl+shift+v在普通模式下复制,复制的位置为普通模式下的光标所在的位置。
#ubuntu 设置快捷键
	#右上角 系统设置 keyboard shortcuts customshortcuts + 名字 应用程序的位置 选中该条 输入快捷键即可

#shell 光标移动 类似emacs
	#f:front b:behind n:next p:prior
	#shell 命令行下不少键盘操作跟 Emacs 是类似的，可能不能说是从 Emacs 借鉴过来的：
	#(注意下面的”前”都是指”左”或”上”，”后”是”右”或”下”)
	#C-r 查找历史执行命令，很便捷的调用历史命令的方式，输入历史命令关键字，就会及时显示匹配命令，enter 即可执行
	#C-p 前一条指令
	#C-n 后一条指令
	#C-c 终止已经运行的命令(针对还没有运行完的命令和脚本，实际为向相关进程发送中断信号)或者取消已经输入的命令
	#C-o/C-j/C-m 执行当前行输入的命令，跟 enter 类似
	#C-l 清屏，clear 命令
	#C-a 移动光标到行首
	#C-e 移动光标到行尾
	#C-t 交换光标前俩字符的位置
	#C-h 往后删除一字符
	#C-d 往前删除一字符
	#C-b 往后移动一个字符
	#C-f 往前移动一个字符
	#下面几个操作原理估计类似 emacs 的 yank 操作，可以理解为一套独立的粘贴板机制:
	#C-w 剪切前一个单词(空格间隔的字符串单元)
	#C-u 剪切到行首
	#C-k 剪切到行尾
	#C-y 粘贴剪切
#容量统计
#ls -lhs
	#但前文件夹的内容大小 不递归 文件夹按4k算
#ls |grep -v ^lte |xargs du -sh|sort -n
	#统计当前文件夹(目录)大小，并按文件大小排序 按数值大小 不考虑 K M G
	#ls |grep -v ^lte |xargs du -sh |grep "[0-9]K"|sort -r 从到小排序	 K M G 手动替换 去掉lte的查询
	#du -sh directionname or file name 统计文件或文件夹大小
#查看所有的快捷键
	#map

#vim-ouyangxiongyi使用小结
	#fugitive
		# Gblame 可以查看谁更改的, 更多输入 help:fugitive 简单的按G+tab选择
	#本文件的代码补全 ctrl+n  还可以使用bundle youcompleteme 或者系统自带的omnicomplete
	#vimrc 设置显示空格与tab
	#set lcs=tab:>-,trail:-
	#set list
	#设置"set expandtab 就不会自动将tab换成空格
	#复制不适用 " + */+ + p 三个字符。
		#其中注意两个特殊的寄存器：”* 和 “+。这两个寄存器是和系统相通的，前者关联系统选择缓冲区，后者关联系统剪切板。通过它们可以和其他程序进行数据交换。
			#参考：http://www.cnblogs.com/jianyungsun/archive/2011/03/19/1988855.html  注意是在ubuntu上，cygwin里面有点不一样。
			# " * P ：shift v
			# “ + p : 右键 复制
			# \+space y 
			# \+space p
	#空格与tab的替换
		#想用4个空格变成tab，可以vim中执行 :%s/ /^I/g
		#PS:“^I”是ctrl-V + tab的输出
	#vimdirr zo open
		#zc close
	#vimrc 中定义
		#noremap q <Nop>
		#noremap Q q
		#所以宏录制使用Q 开始与结束
	#" Move between windows
	#map <C-j> <C-w>j
	#map <C-k> <C-w>k
	#map <C-l> <C-w>l
	#map <C-h> <C-w>h
	#map <leader>gj <C-w>+
	#map <leader>gk <C-w>-
	#map <leader>gl <C-w><
	#map <leader>gh <C-w>>





#shell
		#-e filename 如果 filename存在，则为真
		#-d filename 如果 filename为目录，则为真 
		#-f filename 如果 filename为常规文件，则为真
		#-L filename 如果 filename为符号链接，则为真
		#-r filename 如果 filename可读，则为真 
		#-w filename 如果 filename可写，则为真 
		#-x filename 如果 filename可执行，则为真
		#-s filename 如果文件长度不为0，则为真
		#-h filename 如果文件是软链接，则为真
		#filename1 -nt filename2 如果 filename1比 filename2新，则为真。
		#filename1 -ot filename2 如果 filename1比 filename2旧，则为真。
		#-eq 等于
		#-ne 不等于
		#-gt 大于
		#-ge 大于等于
		#-lt 小于
		#-le 小于等于
		#[ -f "somefile" ] ：判断是否是一个文件
		#[ -x "/bin/ls" ] ：判断/bin/ls是否存在并有可执行权限
		#[ -n "$var" ] ：判断$var变量是否有值
		#[ "$a" = "$b" ] ：判断$a和$b是否相等          -r file     用户可读为真
		#	#逻辑运算符： a(and) o(or)

		#${parameter:-word}
		#如果parameter为null或者未设置，整个参数替换表达式值为word
		#
		#${parameter:=word}
		#如果parameter为null或者未设置，整个参数替换表达式值为word，并且parameter参数值设置为word
		#
		#${parameter:?word}
		#如果parameter为null或者未设置，则打印出错误信息。否则，整个参数替换表达式值为$parameter
		#
		#${parameter:+word}
		#如果parameter不为null或者未设置，则整个参数替换表达式值为word
		#
		#${parameter:offset}
		#${parameter:offset:length}
		#
		#${!prefix*}
		#${!prefix@}
		#将带有前缀为prefix的参数名打印出来
		#
		#${!name[@]}
		#${!name[*]}
		#这个是针对name数组的，打印出来name数组有哪些下标
		#
		#${parameter#word}
		#${parameter##word}
		#从头开始扫描word，将匹配word正则表达的字符过滤掉
		#
		##为最短匹配，##为最长匹配
		#
		#${parameter%word}
		#${parameter%%word}
		#从尾开始扫描word，将匹配word正则表达式的字符过滤掉
		#
		#%为最短匹配，%%为最长匹配
		#
		#${parameter/pattern/string}
		#${parameter//pattern/string}
		#将parameter对应值的pattern字符串替换成为string字符串
		#
		#/表示只替换一次
		#
		#//表示全部替换

#awk
	#awk
	#>'BEGIN { FS=":";print "统计销售金额";total=0}
	#>{print $3;total=total+$3;}
	#>END {printf "销售金额总计：%.2f",total}' sx
	#awk实例
		#rootdev=$(awk 'BEGIN { RS=" "; FS="="; } $1 == "root" { print $2 }' < /proc/cmdline) 
		# BEGIN 预处理整个文件 其中 RS是首次分隔符  FS是二次分隔符(分成多个字符串)，二次分隔符用于分出各个$1 $2 
		# END 文件结束时处理

alias openwrt="ssh -l root 192.168.1.1"
