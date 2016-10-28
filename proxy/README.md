---
#  客户端通过一台服务器代理上网
## 服务器配置
开启sshd 服务端(linux machine or cygwin)
	example
	net stop/start/restart sshd

## 客户机配置
### 开启socket5 本地程序通过server：xujx@10.8.74.174：202的代理
	ssh -l xujx -p 202 -N -f -D 0.0.0.0:10800 10.8.74.174
	or ssh -l xujx -p 202 -N -f -D 0.0.0.0:10800 10.8.74.174 -oConnectTimeout=180 -oServerAliveInterval=240
	开启ssh客户端(linux machine or cygwin)
	如果突然不能连接，可以尝试重新执行上面的ssh 客户端或者重新start sshd 或者重新开个cygwin

#### window用户
`下载Proxifier->设置代理服务器->socket5:127.0.0.1:10800`

#### linux用户(比如ubuntu)
	tsock(添加dns通过socket5需要重新编译)
	tsock firefox
	proxychains
	proxychains firefox
#### tsock configure example
	local = 172.16.0.0/255.255.255.0
	local = 127.0.0.0/255.255.0.0
	server = 127.0.0.1
	server_type = 5
	server_port = 10800
#### proxychains
	/usr/bin/proxychains
	LD_PRELOAD=/usr/lib/libproxychains.so.3.0.0

	/usr/bin/proxyresolv
	LD_PRELOAD=/usr/lib/libproxychains.so.3.0.0
	DNS_SERVER=192.168.50.89

	/etc/proxychains.conf
	socks5 127.0.0.1 10800
