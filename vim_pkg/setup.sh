#!/bin/bash

P=`readlink -f $(dirname $0)`

# vim files
echo -n "Backup your original vim files? (y/n)"
read IN
if [ "$IN" = "y" ] || [ "$IN" = "Y" ]; then
    rm -rf ~/.vim_backup; mv -f ~/.vim ~/.vim_backup
    rm -f ~/.vimrc_backup; mv -f ~/.vimrc ~/.vimrc_backup
fi

rm -rf ~/.vim
rm -f ~/.vimrc

ln -sd $P ~/.vim
ln -s $P/vimrc ~/.vimrc

echo "=== DONE! ==="

# setup dictionary
echo -n "Setup dictionary? (y/n)"
read IN
if [ "$IN" = "y" ] || [ "$IN" = "Y" ]; then
    sudo sh -c "apt-get install stardict"
    sudo sh -c "apt-get install sdcv"
    sudo sh -c "mv -u ./stardict-langdao-* /usr/share/stardict/dic/"
    echo "=== DONE! ==="
fi

exit 0
