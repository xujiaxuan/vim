gvim + eclipse + eclim
see http://blog.csdn.net/hui_lang/article/details/19248895 for more information

download:
GVim：http://www.vim.org/download.php //直接从百度搜索的结果，百度中心下载即可
Eclipse：https://www.eclipse.org/downloads/
Eclim：http://eclim.org/install.html

GVim：7.4 32位
Eclipse：kepler 4.3.1 64位
Eclim：2.3.2

java -jar eclim_2.3.2.jar  

notice: version 要匹配

gvim的配置文件再安装目录中的：_vimrc
	example:C:\Program Files (x86)\Vim\_vimrc

add one version in ubuntu:
	eclipse:3.7.2 v2
	eclim_1.7.19


bundle:
	windows:adt-bundle-windows-x86_64-20140321\adt-bundle-windows-x86_64-20140321
	ubuntu:adt-bundle-linux-x86_64-20130219

ubuntu12.04:
	incremental find ctrl+j editingtext edit
	open search dialog ctrl+h inwindows search
	build all ctrl+b inwindows project
	paste shift+insert  indialogs and windows edit

copy to command mode line:
	edit->copy
	edit->paste
	attention: just use mourse without the alt+e+c alt+e+p  becaute alt+e+c is eclipse and not gvim
		if you want to use insert in gvim  you can use alt+s left left c   alt+s left left p
	you can use :"+y to 剪切板

	one time after unbind:paste shift+insert  indialogs and windows edit  and restart eclipse
	shift+insert does good
	
copy in command line in gvim and vim :
	ctrl+r + register
	it will do as the key in common mode: "+register
