---
## setup.exe下载地址
	https://cygwin.com/mirrors.html

## 安装时镜像选择
	快速镜像之一：mirrors.ustc.edu.cn

## 设置sshd
	ssh-host-config 如果没有命令，重新执行setup.exe 添加openssh
	其它:gcc git make autoconf dbg。可以每次都重复选取

**注意配置sshd时 no use diffname, no create new user, 不输入新密码, 就可以使用系统的密码登录了**
**客户端运行时添加使用-v -v -v 可以查看到log**

### 示例
	*** Query: Overwrite existing /etc/ssh_config file? (yes/no) yes
	*** Info: Creating default /etc/ssh_config file
	*** Query: Overwrite existing /etc/sshd_config file? (yes/no) yes
	*** Info: Creating default /etc/sshd_config file
	*** Info: Privilege separation is set to yes by default since OpenSSH 3.3.
	*** Info: However, this requires a non-privileged account called 'sshd'.
	*** Info: For more info on privilege separation read /usr/share/doc/openssh/READ
	ME.privsep.
	*** Query: Should privilege separation be used? (yes/no) no
	*** Info: Updating /etc/sshd_config file
	*** Query: Do you want to install sshd as a service?
	*** Query: (Say "no" if it is already installed as a service) (yes/no) yes
	*** Query: Enter the value of CYGWIN for the daemon: []
	*** Info: On Windows Server 2003, Windows Vista, and above, the
	*** Info: SYSTEM account cannot setuid to other users -- a capability
	*** Info: sshd requires. You need to have or to create a privileged
	*** Info: account. This script will help you do so.
	*** Info: You appear to be running Windows XP 64bit, Windows 2003 Server,
	*** Info: or later. On these systems, it's not possible to use the LocalSystem
	*** Info: account for services that can change the user id without an
	*** Info: explicit password (such as passwordless logins [e.g. public key
	*** Info: authentication] via sshd).
	*** Info: If you want to enable that functionality, it's required to create
	*** Info: a new account with special privileges (unless a similar account
	*** Info: already exists). This account is then used to run these special
	*** Info: servers.
	*** Info: Note that creating a new user requires that the current account
	*** Info: have Administrator privileges itself.
	*** Info: The following privileged accounts were found: 'cyg_server' .
	*** Info: This script plans to use 'cyg_server'.
	*** Info: 'cyg_server' will only be used by registered services.
	*** Query: Do you want to use a different name? (yes/no) no
	*** Query: Please enter the password for user 'cyg_server':
	*** Query: Please enter the password for user 'cyg_server':
	*** Query: Please enter the password for user 'cyg_server':
	*** Query: Reenter:
	
	*** Info: The sshd service has been installed under the 'cyg_server'
	*** Info: account. To start the service now, call `net start sshd' or
	*** Info: `cygrunsrv -S sshd'. Otherwise, it will start automatically
	*** Info: after the next reboot.
	*** Info: Host configuration finished. Have fun!

### 启动 sshd 示例
	tplink@tplink-PC1 ~
	$ net start sshd
	CYGWIN sshd 服务正在启动 .
	CYGWIN sshd 服务已经启动成功。
