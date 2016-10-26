---
# 1. download
git clone https://github.com/panagiks/RSPET

# 2. start server

python rspet_server.py


# 3. start client

python rspet_client.py <server ip>  //example python rspet_client.py 127.0.0.1  

# 4. command
## 4.1 send file/binary

> 1. server: List_Hosts  -> Choose_Hosts <id>
2. server: Make_File <file_name> //send file
3. server: Pull_File <file_name> //pull file
3. server: Pull_Binary <file> // pull binary file
4. server: Make_Binary <file> // send binary file

# 5. other:

before select:

	Server commands:
	        Quit: Quit the CLI and terminate the server.
	        ALL: Select all hosts.
	        help: List commands available in current state or provide syntax for a command.
	        Choose_Host: Select a single host.
	        List_Hosts: List all connected hosts.
	        Select: Select multiple hosts.

after select:

	UDP_Spoof: Flood target machine with UDP packets via spoofed ip & port.
	        help: List commands available in current state or provide syntax for a command.
	        UDP_Flood: Flood target machine with UDP packets.
	        Pull_File: Pull a regular text file from the host.
	        Execute: Execute system command on host.
	        Make_File: Send a regular text file to the host(s).
	        List_Sel_Hosts: List selected hosts.
	        Exit: Unselect all hosts.
	        KILL: Stop host(s) from doing the current task.
	        Pull_Binary: Pull a binary file from the host.
	        Make_Binary: Send a binary file to the host(s).
	        Close_Connection: Kick the selected host(s)

# 6. problem:

	1.Execute cp rspet_client.py ../
	Command has no output 实际上已经运行成功,使用的时popen来执行的。
	2.Something went wrong during binding & listening
	有时候时已经用sudo运行过客户端，且同台电脑的服务器出现这个问题，需要在运行服务器命令前面添加sudo
	3.[127.0.0.1]~$ Execute echo > /etc/x
	/bin/sh: 1: cannot create /etc/x: Permission denied
	可能是客户端没有使用sudo运行

# 7. flask
## 7.1 install
pip2 install Flask flask-cors

## 7.2 start server
python rspet_server_api.py 然后就可以在启动一个客户端：python rspet_client.py 127.0.0.1
然后127.0.0.1:5000下面的各个网址的用用如下

	[
	  {
	    "doc": "Refresh server. Check for lost hosts.", 
	    "methods": [
	      "HEAD", 
	      "OPTIONS", 
	      "GET"
	    ], 
	    "uri": "/rspet/api/v1.0/refresh"
	  }, 
	  {
	    "doc": "Return all hosts.", 
	    "methods": [
	      "HEAD", 
	      "OPTIONS", 
	      "GET"
	    ], 
	    "uri": "/rspet/api/v1.0/hosts"
	  }, 
	  {
	    "doc": "Execute command on multiple hosts.", 
	    "methods": [
	      "POST", 
	      "OPTIONS"
	    ], 
	    "uri": "/rspet/api/v1.0/hosts"
	  }, 
	  {
	    "doc": "Return general help.", 
	    "methods": [
	      "HEAD", 
	      "OPTIONS", 
	      "GET"
	    ], 
	    "uri": "/rspet/api/v1.0/help"
	  }, 
	  {
	    "doc": null, 
	    "methods": [
	      "HEAD", 
	      "OPTIONS", 
	      "GET"
	    ], 
	    "uri": "/rspet/api/v1.0/quit"
	  }, 
	  {
	    "doc": "Execute general (non-host specific) command.", 
	    "methods": [
	      "POST", 
	      "OPTIONS"
	    ], 
	    "uri": "/rspet/api/v1.0"
	  }, 
	  {
	    "doc": "Return API map.", 
	    "methods": [
	      "HEAD", 
	      "OPTIONS", 
	      "GET"
	    ], 
	    "uri": "/rspet/api/v1.0"
	  }, 
	  {
	    "doc": "Return specific host.", 
	    "methods": [
	      "HEAD", 
	      "OPTIONS", 
	      "GET"
	    ], 
	    "uri": "/rspet/api/v1.0/hosts/<string:host_id>"
	  }, 
	  {
	    "doc": "Execute host specific command.", 
	    "methods": [
	      "POST", 
	      "OPTIONS"
	    ], 
	    "uri": "/rspet/api/v1.0/hosts/<string:host_id>"
	  }, 
	  {
	    "doc": "Return command specific help.", 
	    "methods": [
	      "HEAD", 
	      "OPTIONS", 
	      "GET"
	    ], 
	    "uri": "/rspet/api/v1.0/help/<string:command>"
	  }
	]

## 7.3 example:
	http://127.0.0.1:5000/rspet/api/v1.0/hosts
**result**

	{
	  "hosts": {
	    "0": {
	      "hostname": "xujx", 
	      "ip": "127.0.0.1", 
	      "port": 54812, 
	      "system": "Linux", 
	      "type": "full", 
	      "uri": "http://127.0.0.1:5000/rspet/api/v1.0/hosts/0", 
	      "version": "0.2.7"
	    }
	  }
	}	
