export RTE_SDK=/home/xujx/dpdk2
#export RTE_TARGET=x86_64-default-linuxapp-gcc  
export RTE_TARGET=x86_64-native-linuxapp-gcc

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/mybin" ] ; then
    PATH="$HOME/mybin:$PATH"
fi

if [ -d "$HOME/mybin/tmp" ] ; then
    PATH="$HOME/mybin/tmp:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
