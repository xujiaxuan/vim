# Path to your oh-my-zsh installation.
  export ZSH=/home/xujx/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

  export PATH="/home/xujx/mybin/tmp:/home/xujx/mybin:/home/nil/software/android-sdk-linux:/home/nil/software/android-sdk-linux/tools:/usr/lib/jvm/default-java/bin:/home/xujx/mybin/tmp:/home/xujx/mybin:/home/nil/software/android-sdk-linux:/home/nil/software/android-sdk-linux/tools:/usr/lib/jvm/default-java/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/xujx/bin:/home/xujx/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source ~/mybin/xgrep

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#tmp
alias grep='grep --color'
alias ls='ls --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias server="cd ~/work/groupwork/teamwork/team3/server" 
alias client="/home/xujx/mybin/client"

#for git...................................................
alias gitst="git status" #状态
alias gitre="git reflog" #头指针变动
#log
alias gitlogog="git log --oneline --graph"  #一行
alias gitlog="git log"  #所有
alias gitlogformat="git log --pretty=format:\"%h-%an        :%s\"" #格式
alias gitlogp="git log -p"
#stash clean
alias gitstash="git stash" #中断当前编辑并保存，同时将工作去恢复到上次提交
alias gitstashap="git stash apply" #恢复上次stash的内容
alias gitstashlist="git stash list" #列出stash stack
alias gitstashapply="git stash apply " #应用指定版本     :git stash apply stash@{<n>}
alias gitstashpop="git stash pop "  #应用指定版本并删除 ：git stash pop stash@{<n>}
alias gitstashdro="git stash drop " #删除存储  ：git stash drop :git stash drop stash@{<n>}
alias gitstashclear="git stash clear" #清空存储
alias gitclean="git clean -fd" #清除未跟踪文件
#branch
alias gitbradd="git branch " # add new branch 不切换分支  :git branch <newbranchname>
alias gitbrlist="git branch" #list branch
alias gitbrr="git branch -r" #list branch 包括远程与本地
alias gitbrdel="git branch -d" # 删除分支 :git branch -d <branchname>
#add
alias gitad="git add" #添加到暂存区  :git add <file or dir>
#commit
alias gitco="git commit"
alias gitco-m="git commit -m " #提交 加一个提交信息参数     :git commit -m "<info>"
alias gitco-amend="git commit --amend" #增量提交
alias gitco-a="git commit -a" #添加所有修改 暂存与未暂存都add 再commit  :git commit -a "<info>"
#reset
alias gitreset="git reset" #分支头指针移到某处 要加个参数 :git reset <index>
alias gitresethard="git reset --hard " #分支头指针与暂存本地都改变。:git reset --hard <index>
alias gitresetcachefile="git reset HEAD " #取消暂存  :git reset HEAD <filename>
#checkout
alias gitcheck="git checkout" #再一个变量或分支名
alias gitcheckfile="git checkout file" #使用版本库替换工作区文件
alias gitcheckbranch="git checkout -b " # 创建并切换分支 :git checkout -b <newbranchname>
#rebase pull push
alias gitrebase="git pull --rebase" #跟新本地到最新
alias gitpush="git push origin HEAD:refs/for/training-2013" #推送到远程
#revert
alias revertcommit="git revert "    #加commit id   git revert <commitid>
#diff
alias gitdiff="git diff HEAD^ --check" #提交前的检查是否有空格,tab 错误
alias gitdiffgz="git diff" #工作区 暂存区
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

#patch
alias gitpatch="git format-patch  -o . -1"  #   #就最后一个提交作成一个补丁。 -2:最后两个提交作成两个分开的两个patch -3:左后三个提交作成分开的三个提交。以此类推。
    # gitpatch      -o  ./  是输出的路径，输出的文件名自动选择提交的log。
alias patchfile="patch <originalfile> <patchfile>" #需要输入两个变量 源文件：originalfile 补丁文件：patchfile 在为源文件打补丁前，建议备份原文件cp a.txt a.txt.history
    # patchfile     -o  <newfileafterpatchname> 这样源文件就不会被删掉
    # patchfile     -r:recursion include directory ; -N :valid delete or create file ;-p<num> relative path ;-E if empty then delete ;-R now is new to recover to all 
    # patchfile path in old direction and run    patch -p1 < <file.patch>
    # diff in patch gerrit choose diff base patch
#clone & checkout
alias gitclone="git clone ssh://xujiaxuan@git.tp-link.net:29418/training/teamwork" #在本目录下克隆远程裸版本库
alias gitcheckoutremote="git checkout -b mybranch origin/training/teamwork" #创建本地分支跟踪远程分支

#dir
alias gitdir="git rev-parse --show-toplevel"
#end git ...................................................

alias vimrc="vim ~/.vimrc"
alias upvimrc=". ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias bashrccat="cat ~/.bashrc"
alias bashrcInclude="cat ~/.zshrc | grep -n -B 2 -A 2" #-B -A before line after line
alias s="bashrcInclude"
alias upbashrc="source ~/.bashrc"
alias upxgrep="source ~/mybin/xgrep"

alias re_git="cd /home/xujx/compile2/re_git/bras_t1"
alias re_git_accel="cd /home/xujx/compile2/re_git/bras_t1/accel_ppp"
alias re_git_dpdk="cd /home/xujx/compile2/re_git/bras_t1/dpdk"
alias re_git_prox="cd /home/xujx/compile2/re_git/bras_t1/prox"
alias sshdpdk2="ssh -l xujx 172.16.1.70"

alias v="vim "
alias vt="vim -t "
alias vcd="vim ."

#find Path
alias findr="find ./|grep --color -i -n "   #递归查找文件并显示。然后查找符合pattern 的文件 :find | grep <pattern>
alias findt="find ./ |xargs grep --color -i -n " #递归查找文件内容包括pattern的文件及位置 ：find ./ | xargs grep --color <pattern>
#find file name
alias findrr="find ./ -name"
alias f="find ./ -name"
alias findtt="findttt.sh" #findttt.sh filename  express
alias findfileregress="findttt.sh "

#cd
alias androidimg="cd /home/xujiaxuan/android/out.history/debug/target/product/tr781/2kpagenand_images"
alias src="cd /home/xujiaxuan/androidall/android"
alias kernel="cd ~/android/kernel"
alias lk="cd /home/xujiaxuan/android/bootable/bootloader/lk"
alias nand="cd /home/xujiaxuan/android/kernel/drivers/mtd/nand"
#diff
alias diffu="diff -u -c" #name1 name2 以第一个为标准 如 -：删除 +：添加 diff -u <name1> <name2>  -c:output line -u:output standard
alias diffr="diff -u -r -c " #path1 path2  :diff -r -u <path1> <path2>  if not with -r but with path will just in deepth of one.  
alias diffuN="diff -uN" #output near the same as git diff
#vim
alias v="vim "
#clear 清屏
alias clearp="clear " # 或者使用ctrl + l
#apt get
alias acs="apt-cache search "
alias agi="sudo apt-get install "
alias aupg="sudo apt-get upgrade"
alias aupd="sudo apt-get update"    #you can use: "man apt-get | grep update"  for more  help
#xargs
    #xargs  expmple ls |grep -v delete_test|xargs -i cp -r {} delete_test} -i:replace the {}  multi pattern usr grep pattern | grep pattern1 |grep pattern2
    # xargs mv{} {}.old
#tail with refresh
alias tailf="tail -f " #watch file in the last num line
#ls -R |grep 
alias lsR="ls -R | grep "
#grep pattern ?:one character *:any character []:in a region 2>err 1>output 0 input
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
alias whoi="echo `ifconfig |grep "inet addr"|awk '{print $2}'|sed 's/:/ /g'|awk '{print $2}'|grep 192`"
alias sb=". ~/.bashrc"
alias pb52="cd /home/xujiaxuan/ht5200/HT46R064B"
alias op="openfile.sh"
#man zh_CN
#alias cman="man -M /usr/share/man/zh_CN"
alias cman="man -M /usr/share/man"
#www.localhost:8080/index.html
alias index="vim /home/xujiaxuan/emmet-vim/index.html"
alias indexcp="bash /home/xujiaxuan/emmet-vim/scpIndex.sh"
export PATH=$PATH:~/bin
alias usb="cd ~/mr1xu-dev/ap121/linux/kernels/mips-linux-2.6.31/drivers/usb/"
alias adbdir="cd ~/mr1xu-dev/apps/adb"
alias upgrade="cd /home/xujiaxuan/mr1xu-dev/web_server/upgrade3g"
alias modemop="cd /home/xujiaxuan/mr1xu-dev/apps/3g_tools/modem_operation "
alias gst="git status"
alias gbr="git branch"
alias oe-core="cd /home/xujiaxuan/lte/lte/apps_proc/oe-core"
alias lte="cd /home/xujiaxuan/lte"
alias kernel="cd /home/xujiaxuan/lte/lte/apps_proc/kernel"
alias gch="git checkout"
alias glog="git log"
alias lteapps="cd /home/xujiaxuan/lte/lte/apps_proc"
alias gaddu="git add -u"
alias gco="git commit -m"
alias gcoamend="git commit --amend"
alias catdevices="sudo cat /sys/kernel/debug/usb/devices"
alias sm="cd /home/xujiaxuan/smartRouter/qsdk"
alias glame="git blame"
alias na="nautilus"
alias qca="cd ~/smartRouter/qsdk/qca"
alias package="cd ~/smartRouter/qsdk/package"
alias feeds="cd ~/smartRouter/qsdk/feeds"
alias dl="cd ~/smartRouter/qsdk/dl"
alias linux="cd /home/xujiaxuan/smartRouter/qsdk/tp-link/package/linux"
alias uboot="ld"
alias builddir="cd /home/xujiaxuan/smartRouter/qsdk/build_dir"
alias out="cd /home/xujiaxuan/smartRouter/qsdk/bin/ar71xx"
alias qcasrc="cd /home/xujiaxuan/smartRouter/qsdk/qca/src/qca-wifi"
alias qcafeeds="cd /home/xujiaxuan/smartRouter/qsdk/qca/feeds/qca/net/qca-wifi"
alias base-file="cd /home/xujiaxuan/smartRouter/qsdk/package/base-files"
alias example="cd ~/smartRouter/qsdk/qca/feeds/luci/luci/src_sr/modules/tlds/example/"
alias tlds-wireless="cd /home/xujiaxuan/smartRouter/qsdk/qca/feeds/luci/luci/src_sr/libs/tlds-wireless"
alias luci="cd /home/xujiaxuan/smartRouter/qsdk/feeds/luci/luci/src_sr"
alias soholuci="cd /home/xujiaxuan/Desktop/slp_luci/luci-0.11.1"
alias rootdir="cd /home/xujiaxuan/smartRouter/qsdk/build_dir/target-mips_r2_uClibc-0.9.33.2/root-ar71xx"
alias qcafeed="cd /home/xujiaxuan/smartRouter/qsdk/qca/feeds/wlan_10_2/qca-wifi"
alias chan="cd /home/xujiaxuan/smartRouter/qsdk/tp-link/package/tl-chan-quality"
alias monitor="cd /home/xujiaxuan/smartRouter/qsdk/tp-link/package/tl-wlan-monitor"
alias swapi="cd /home/xujiaxuan/ap151/router.web_server/web_server/swApi"
alias openwrt="ssh -l root 192.168.1.1"
alias openwrt2="ssh -l root 192.168.2.1"
alias openwrt3="ssh -l root 192.168.1.3"
alias keygen="ssh-keygen -f \"/home/xujiaxuan/.ssh/known_hosts\" -R 192.168.1.1"
alias keygen="ssh-keygen -f \"/home/xujiaxuan/.ssh/known_hosts\" -R 192.168.1.1"
alias vcd="vim ."
alias qca-hostap="cd /home/xujiaxuan/smartRouter/qsdk/qca/src/qca-hostap"
alias envs="source /home/xujiaxuan/lte/lte/apps_proc/oe-core/build/conf/envsetup.sh"
alias lsdk="cd /home/xujiaxuan/ap151/qca.lsdk.drivers.wlan_modules/wlan_modules"
alias slp--="cd /home/xujiaxuan/smartRouter/qsdk/qca/feeds/luci/luci/src_sr/libs/slp-adapter"
alias slp="cd /home/xujiaxuan/slp/torchlight"
alias slpbin="cd /home/xujiaxuan/slp/torchlight/bin/ar71xx"
alias slpluci="cd /home/xujiaxuan/slp/torchlight/tp_package/luci/luci_tile2-0.11.1"
alias slprootdir="cd /home/xujiaxuan/slp/torchlight/build_dir/target-mips_r2_uClibc-0.9.33.2/root-ar71xx"
alias hostapddir="cd /home/xujiaxuan/smartRouter/qsdk/qca/src/qca-hostap"
alias hostapdfeed="cd /home/xujiaxuan/smartRouter/qsdk/qca/feeds/wlan_10_2/qca-hostap"
alias guest-network="cd /home/xujiaxuan/smartRouter/qsdk/tp-link/package/tl-guest-network"
alias dnt="cd /home/xujiaxuan/smartRouter/qsdk/qca/feeds/luci/luci/src_sr/ds_tool"
alias slpdir="cd /home/xujiaxuan/slpdir"
alias tl-chan="cd /home/xujiaxuan/smartRouter/qsdk/tp-link/package/tl-chan-quality"
alias an="cd /home/xujiaxuan/lte/android"
alias rk="cd /home/xujiaxuan/rkflash/Linux_burn_AP_tools"
alias app="cd /home/xujiaxuan/lte/android/packages/apps/TPWlanIsolate"
alias tlds-isolate="cd /home/xujiaxuan/smartRouter/qsdk/qca/feeds/luci/luci/src_sr/libs/tlds-wlan-isolate"
alias tlds-guest="cd /home/xujiaxuan/smartRouter/qsdk/qca/feeds/luci/luci/src_sr/libs/tlds-guest_network"
alias tp-link="cd /home/xujiaxuan/smartRouter/qsdk/tp-link/package"
alias iwinfodif="cd /home/xujiaxuan/smartRouter/qsdk/package/iwinfo"
alias art="cd /home/xujiaxuan/smartRouter/qsdk/qca/src/LinuxART2"
alias tmux="tmux -2"
alias tmux2="tmux attach-session"
alias vimgit="cd /mnt/hgfs/E/Cygwin-1-7-20/home/tplink/vim/vimgit/myself/ubuntu/bashrc-vimrc-profile"
alias quagga="cd /home/xujiaxuan/smartRouter/qsdk/qca/feeds/packages/net/quagga"
alias tlds-switch="cd /home/xujiaxuan/smartRouter/qsdk/qca/feeds/luci/luci/src_sr/libs/tlds-wlan-switch"
alias wlan-switch="cd /home/xujiaxuan/smartRouter/qsdk/tp-link/package/tl-wlan-switch"
alias app-switch="cd /home/xujiaxuan/lte/android/packages/apps/TPWlanSwitch"
alias one-key-for-switch="mmm -B /home/xujiaxuan/lte/android/packages/apps/TPWlanSwitch && app-switch-install"
alias app-clock-install="sudo /home/xujiaxuan/mybin/adb install -r /home/xujiaxuan/lte/android/out/target/product/rk30sdk/system/app/TPClock.apk"
alias app-switch-install="sudo /home/xujiaxuan/mybin/adb install -r /home/xujiaxuan/lte/android/out/target/product/rk30sdk/system/app/TPWlanSwitch.apk"
alias one-key-for-switch2="mmm -B /home/xujiaxuan/lte/android/packages/apps/TPWlanSwitchTask2/ && app-clock-install"
# laptop
alias q3des="cd /mnt/X/home/chenxuan/桌面"
alias q3wireless="cd /mnt/X/home/chenxuan/wireless"
alias q3jx="cd /mnt/X/home/chenxuan/xjx"
alias q3rootfs="cd /mnt/X/home/chenxuan/wireless/qca9377/fixce/AIO/rootfs"
alias q3cfgdir="cd /mnt/X/home/chenxuan/wireless/amba/ambarella/ambalink_sdk_3_10/output.oem.dragonfly/a12_ambalink/build/qca9377-amba/drivers/qcacld-new/firmware_bin"
alias q3driver="cd /mnt/X/home/chenxuan/wireless/amba/ambarella/ambalink_sdk_3_10/output.oem.dragonfly/a12_ambalink/build/qca9377-amba"
alias q3make="cd /mnt/X/home/chenxuan/wireless/amba/ambarella/ambalink_sdk_3_10/output.oem.dragonfly/a12_ambalink"
alias amba="cd /home/xujiaxuan/smartRouter/amba/ambarella"
alias ambai="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10"
alias pkg="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/pkg"
alias ambaoutput="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/output.oem/a12_ambalink"
alias ambafw="cd /home/xujiaxuan/smartRouter/amba/ambarella/rtos/out/fwprog"
alias ambaconfig="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/ambarella/configs"
alias ambamakeqca="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/output.oem/a12_ambalink"
alias ambaturnkey="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/pkg/network_turnkey"
alias ambadirtarget="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/output.oem/a12_ambalink/target"
alias ambadirbuild="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/output.oem/a12_ambalink/build"
alias ambadirqca9377="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/output.oem/a12_ambalink/build/qca9377-amba"
alias ambadirqca9377src="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/external_sdk/atheros/qca9377"
alias ambadirqca9377package="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/ambarella/package/external_sdk/qca9377"
alias ambadirqca9377pkg="cd /home/xujiaxuan/smartRouter/amba/ambarella/ambalink_sdk_3_10/pkg/external_sdk/qca9377"
alias wearable="cd /home/xujiaxuan/lte/wearable/wearable"
alias ambasvn="cd /home/xujiaxuan/lte/wearable/wearable/a12/software/ambarella"
alias windows7="cd /mnt/hgfs/G/xujiaxuan"
#slpdir
alias slpdir="cd /home/xujiaxuan/lte/slpsvn"
alias slpsvn="cd /home/xujiaxuan/lte/slpsvn"
alias slptop="cd /home/xujiaxuan/lte/slpsvn"
alias slpbuild="cd /home/xujiaxuan/lte/slpsvn/torchlight"
alias slpqcasrc="cd /home/xujiaxuan/lte/slpsvn/slp-sp-target-src/wifi-driver/qca-wifi-10.2.3.31"
alias slpqcafeed="cd /home/xujiaxuan/lte/slpsvn/torchlight/tp_package/wlan-driver/qca"
alias slpsdk="cd /home/xujiaxuan/lte/slpsdk/SLP_SDK_for_wdr5510v2_150730"
alias slpbuildimage="cd /home/xujiaxuan/lte/slpsdk/SLP_Image_Builder_for_wdr5510v2_150730"
alias git-svn="cd /home/xujiaxuan/lte/git-svn"
alias wds-htm="cd /home/xujiaxuan/lte/git-svn/team6/torchlight/tp_package/luci/luci_tile2-0.11.1/html/tile_2.0/OEM/h39rv1/wds/admin"
alias wds-luci="cd /home/xujiaxuan/lte/git-svn/team6/torchlight/tp_package/luci"
alias wds-wlan-driver-feed="cd /home/xujiaxuan/lte/git-svn/team6/torchlight/tp_package/wlan-driver/qca/ap151"
alias wds-wlan-driver="cd /home/xujiaxuan/lte/git-svn/team6/slp-sp-target-src/wifi-driver/qca-wifi-10.2.3.31"
alias scpumac="scp ./build_dir/linux-ar71xx_generic/qca-wifi-10.2.3.31/umac/umac.ko root@192.168.1.1:/lib/modules/3.3.8"
#signal
alias killz="kill -STOP "   #ctrl +z
alias killc="kill -INT "    #ctrl+c
alias killq="kill -QUIT"    #ctrl + \
    #list jobs in this terminal
        #jobs
    #runing
        #fg <NUM>
#ps
alias psshow="ps -aux"
alias psgrep="ps -aux |grep --color"
#zsh
    #tab n/p/f/b
alias zshrc="vim ~/.zshrc"
alias upzshrc="source ~/.zshrc"
#alias -s c=vim
alias -s 5=man
alias -s log=vim
##编辑器
#export EDITOR=vim
#VIMODE='-- INSERT --'
#function zle-line-init zle-keymap-select {
#    VIMODE="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#        zle reset-prompt
#    }
#    zle -N zle-line-init 
#    zle -N zle-keymap-select
#
#    RPROMPT='%{$fg[green]%}${VIMODE}%{$reset_color%}'
##end编辑器
#autojump
[[ -s /home/xujiaxuan/.autojump/etc/profile.d/autojump.sh ]] && source /home/xujiaxuan/.autojump/etc/profile.d/autojump.sh
    #j -s :list the history direction
    #j regex    : cd to the match direction
    #j --purge  : 命令将会把不再存在的目录从数据库中移除
    #j <X>tab   : directioin in history
#命令提示符
#RPROMPT=$(echo "$RED%D %T$FINISH")
#PROMPT=$(echo "$CYAN%n@$YELLOW%M:$GREEN%/$_YELLOW>$FINISH ")
#关于历史纪录的配置
#历史纪录条目数量
export HISTSIZE=10000
#注销后保存的历史纪录条目数量
export SAVEHIST=10000
#历史纪录文件
export HISTFILE=~/.zhistory
#以附加的方式写入历史纪录
setopt INC_APPEND_HISTORY
#如果连续输入的命令相同，历史纪录中只保留一个
setopt HIST_IGNORE_DUPS
#为历史纪录中的命令添加时间戳
setopt EXTENDED_HISTORY      
 
#启用 cd 命令的历史纪录，cd -[TAB]进入历史路径
setopt AUTO_PUSHD
#相同的历史路径只保留一个
setopt PUSHD_IGNORE_DUPS
#自动补全功能[[[
setopt AUTO_LIST
setopt AUTO_MENU
#开启此选项，补全时会直接选中菜单项
#setopt MENU_COMPLETE
 
autoload -U compinit
compinit
 
#自动补全缓存
#zstyle ':completion::complete:*' use-cache on
#zstyle ':completion::complete:*' cache-path .zcache
#zstyle ':completion:*:cd:*' ignore-parents parent pwd
#自动补全选项
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' select-prompt '%SSelect:  lines: %L  matches: %M  [%p]'
 
zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:predict:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate
 
#路径补全
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-shlashes 'yes'
zstyle ':completion::complete:*' '\\'
#修正大小写
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
#错误校正
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
#补全类型提示分组
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'
zstyle ':completion:*:corrections' format $'\e[01;32m -- %d (errors: %e) --\e[0m'
# cd ~ 补全顺序
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
#]]]
#路径别名 {{{
#进入相应的路径时只要 cd ~xxx
#hash -d A="/media/ayu/dearest"
#hash -d H="/media/data/backup/ayu"
#hash -d E="/etc/"
#hash -d D="/home/ayumi/Documents"
#}}}
#{{{自定义补全
#补全 ping
zstyle ':completion:*:ping:*' hosts 192.168.1.{1,50,51,100,101} www.google.com
 
#补全 ssh scp sftp 等
zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
#}}}
#sshfs
    #
#commands for svn
    #svn checkout(或svn co) URL [PATH]
        #example: svn co http://192.168.1.101/svn/repos1/WR841N/rc_files/src_en/frames /svn/abc
        #example: svn co --username xujiaxuan@tp-link.net --password xjx2488901 
            #http://mobilesvn.rd.tp-link.net/svn/management/document/SmartRouter/研究文档
    #svn update(或svn up) [PATH]
    #svn update(或svn up) [PATH] -r arg
        # -r arg 
            #NUMBER      直接指定版本的序号的数值例如上图中被选中的版本号941
            #DATE        DATE的格式是{YYYYMMDD}，它指定此日期前的最后一个版本
            #“BASE”      直接使用字符串“BASE”，指定本地库所处的版本
    #svn commit(或svn ci) [PATH] [-m arg]
        #-m arg用户添加提交时的日志，arg代表要添加日志的内容
    #svn cleanup
        #Update、Checkout中断
    #svn log
    #svn export URL/PATH [PATH2]
    #svn import [PATH] URL
    #svn add PATH
        #PATH是要增加的目录或文件
    #svn delete(或svn remove/del/rm) URL/PATH
        #URL/PATH是要删除的文件或目录的在SVN服务器上的路径或本地路径 
    #svn rename
        #svn move(或svn rename/mv/ren) SRC_URL DST_URL
            #SRC_URL和DST_URL可以是本地路径也可以是SVN服务器路径，它们如果在同一个文件夹中就是改名操作。
    #Repo-browser
        #svn list(svn ls) URL
    #Show log 
        #svn log [PATH(本地SVN库路径)]
        #-r arg(最高版本):arg(最低版本)
            #examlpe:svn log -r '{2014-08-19 16:26:28}'
    #svn diff
        #svn diff >~/a && vim ~/a
        # like git diff HEAD
        # svn diff   -c  r4343
    #svn ci [PATH]
        # like git status
    #svn lock/unlock
        # 通知其他用户，某些文件正在被使用
        # Release lock，来解除正在使用的状态
    #svn blame 
        # 与git blame 差不多
    #ignore file
        # global-ignores
            # ~/.subversion/config
# git-svn command ref:http://blog.chinaunix.net/uid-11639156-id-3077471.html http://git-scm.com/docs/git-svn
    # git svn clone http://rdscm.tp-link.net/svn/SOHO/SLP/branches/team6
    # git commit -m "abcd"
        #git svn dcommit
    
#smart router
    #rp
    #git push origin HEAD:refs/for/qsdk/master
    #git checkout -b develop origin/qsdk/master
    #AP
    #git checkout -b develop origin/rk30_sr
    #git push origin HEAD:refs/for/rk30_sr
#remoutn 
    # mount -o remount,rw /



#prox
alias start_prox_routing="sudo ./prox/build/prox -f prox/config/bras/pppoe_test/lb_pppoe-ipoe_kni-routing.cfg"
alias start_prox_routing_ctrl="sudo ./prox/build/prox -f prox/config/bras/pppoe_test/lb_pppoe-ipoe_kni-routing-ctrl.cfg"
alias start_prox="sudo ./prox/build/prox -f prox/config/bras/pppoe_test/lb_pppoe-ipoe_kni.cfg"
alias start_prox_pppoes="sudo ./prox/build/prox -f prox/config/bras/pppoe_test/lb_pppoes-ipoes_kni.cfg"
alias start_prox_pppoes_no_ipoe="sudo ./prox/build/prox -f prox/config/bras/pppoe_test/lb_pppoes-kni.cfg"
alias start_prox_integrate="sudo ./prox/build/prox -u -f prox/config/bras/pppoe_test/02-few-core.cfg"
alias start_prox_integrate2="sudo ./prox/build/prox -f prox/config/bras/pppoe_test/02-few-core2.cfg"
alias start_prox_integrate_without_lua="sudo ./prox/build/prox -f prox/config/bras/pppoe_test/02-few-core-without-lua.cfg"
#accel-ppp
alias start_accel="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp.debug.path.conf"
alias start_accel_ippool="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp.debug.ippool.conf"
alias start_accel_ippool2="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp.debug.ippool2.conf"
alias start_accel_ippool3="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp.debug.ippool3.conf"
alias start_accel_single="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp.debug.path2.conf"
alias start_accel_taskset="sudo ifconfig eth4 up && sudo taskset -c 3 ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp.debug.path.conf"
alias start_accel_radius="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp_with_radius.shm.debug.conf"
alias start_accel_radius2="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp_with_radius.shm2.debug.conf"
alias start_accel_radius3="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp_with_radius.shm3.debug.conf"
alias start_accel_radius4="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp_with_radius.shm4.debug.conf"
alias start_accel_radius5="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp_with_radius.shm5.debug.conf"
alias start_accel_radius_single="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/accel-ppp_with_radius2.shm.debug.conf"
alias start_accel_example="sudo ifconfig eth4 up && sudo ./accel_ppp/build/accel-pppd/accel-pppd -c accel_ppp/config/pppoe/example"
alias my_dpdk_config="sudo /usr/local/bin/dpdk_config"

#rpm search
alias rpm_search="rpm -qa |grep " #pack
alias rpm_include="rpm -ql " #pack
alias rpm_uninstall="rpm -e " #pack
alias rpm_install="rpm -ivh " #pack
alias rpm_file_belong="rpm -qf " #file path

#ifconfig
alias i="ifconfig"
alias ia="ifconfig -a"

#alias ssh 125
alias ssh125="sudo ssh -l xujiaxuan -N -f -R 2222:0.0.0.0:63501 10.8.74.125"

alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=mate   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
alias -s rb=mate     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s py=python       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
#alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias -s xz='xz -d'
alias -s tar='tar -xvf'

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh


#wangsu
alias swbrootfs="cd /home/xujiaxuan/workdir/netcore/sdk/rootfs"
alias netcore="cd /home/xujiaxuan/workdir/netcore/sdk"
alias workdir="cd /home/xujiaxuan/workdir"
alias workdir-openwrt="cd /home/xujiaxuan/workdir/openwrt/MtkOpenwrt2636Sdkv14-2/openwrt-2.6.36"
alias workdir-openwrt-rootdir="cd /home/xujiaxuan/workdir/openwrt/MtkOpenwrt2636Sdkv14-2/openwrt-2.6.36/build_dir/target-mipsel_24kec+dsp_uClibc-0.9.33.2/root-ramips"
alias openwrtdir="cd /home/xujiaxuan/opensrc-openwrt/openwrt"
alias builddir="cd /home/xujiaxuan/workdir/netcore/sdk"
alias workdir-mtk-openwrt="cd /home/xujiaxuan/workdir/mtk_wrt_kernel"
alias wangsugit="cd /home/xujiaxuan/workdir/src/git/swbplt/netcore"
alias wangsusvn="cd /home/xujiaxuan/workdir/src/svn/swbplt/netcore"
alias workdir-openwrt-builddir-linux="cd /home/xujiaxuan/workdir/openwrt/MtkOpenwrt2636Sdkv14-2/openwrt-2.6.36/build_dir/target-mipsel_24kec+dsp_uClibc-0.9.33.2/linux-ramips_mt7620a/linux-2.6.36"
alias accel-ppp-dir="cd /home/xujx/accel-pppdir/accel-ppp.git"
alias dpdk-dir="cd /home/xujx/dpdkdir/dpdk"
alias accel-ppp-dir-linux="cd /home/xujx/linux/linux-3.10.49"
alias ac="cd /home/xujiaxuan/bras/pppoe/accel-ppp.git"
alias ac-linux="cd /home/xujiaxuan/opensrc-openwrt/openwrt/build_dir/target-mipsel_24kec+dsp_uClibc-0.9.33.2/linux-ramips_mt7620a/linux-3.10.49"
alias acw="cd /home/xujiaxuan/bras/pppoe/accel-ppp.new/accel-ppp.git"
alias dpdkdir="cd /home/xujiaxuan/bras/dpdk/dpdk"
alias proxdir="cd /home/xujiaxuan/bras/dppd-PROX-v021"
alias bras="cd /home/xujiaxuan/bras"

alias .="source "

alias wssvn="cd /home/xujiaxuan/workdir/bras_t1/bras_t1"
alias wsgit="cd /home/xujiaxuan/workdir/bras_t1/bras_t1_git"
alias wsgitprox="cd /home/xujiaxuan/workdir/bras_t1/bras_t1_git/prox"
alias wsgitproxexample="cd /home/xujiaxuan/bras/pppoe/netbsd_dpdk_port/netbsd_dpdk_port"
alias wsgitaccel="cd /home/xujiaxuan/workdir/bras_t1/bras_t1_git/accel_ppp"

alias -g H37="172.16.0.37"
alias -g RE_GIT="/home/xujx/compile2/re_git/bras_t1"

alias accel-dpdk-source="cd ../../dpdk && source dpdkrc && cd ../accel_ppp/build"
alias source_dpdk="cd /home/xujx/compile2/re_git/bras_t1/dpdk && . dpdkrc && cd -"
alias start_dropbear="sudo /usr/local/sbin/dropbear -p 202 -E -F"
alias dpi="cd /home/xujx/compile2/re_git/dpi_t1"
alias dpi-dir="cd /home/xujx/compile2/re_git/ndpi_github/nDPI"
alias flask="cd /home/xujx/compile2/re_git/dpi_t1/web/flask"
alias work="cd /home/xujx/vim2/vim"
alias work_ubuntu="cd /home/xujx/vim2/vim/myself/ubuntu"

#scp 37 to local
    #scp -P 202 a xujx@10.8.74.174:~/

#proxychains
alias proxy_git="proxychains git "
alias pgst="proxychains git status"
alias p="proxychains "

DISABLE_AUTO_TITLE="true"
export PATH=/home/xujx/.cabal/bin:$PATH
