#!/usr/bin/env python
#coding: utf-8
from ftplib import FTP
import time
import tarfile
import sys
import os
#!/usr/bin/python
#-*- coding: utf-8 -*-

from ftplib import FTP

def ftpconnect(host, username, password):
    ftp = FTP()
    #ftp.set_debuglevel(2)         #打开调试级别2，显示详细信息
    ftp.connect(host, 21)          #连接
    ftp.login(username, password)  #登录，如果匿名登录则用空串代替即可
    return ftp
    
def downloadfile(ftp, remotepath, localpath):
    bufsize = 1024                #设置缓冲块大小
    fp = open(localpath,'wb')     #以写模式在本地打开文件
    ftp.retrbinary('RETR ' + remotepath, fp.write, bufsize) #接收服务器上文件并写入本地文件
    ftp.set_debuglevel(0)         #关闭调试
    fp.close()                    #关闭文件

def uploadfile(ftp, remotepath, localpath):
    bufsize = 1024
    fp = open(localpath, 'rb')
    ftp.storbinary('STOR '+ remotepath , fp, bufsize) #上传文件
    ftp.set_debuglevel(0)
    fp.close()                                    

if __name__ == "__main__":
    if len(sys.argv) != 7:
        print "./ftp_file.py get/put <ip> <name> <passwd> <remote_file> <local_file>"
    ftp = ftpconnect(sys.argv[2], sys.argv[3], sys.argv[4])
    if sys.argv[1] == "get":
        downloadfile(ftp, sys.argv[5], sys.argv[6])
    if sys.argv[1] == "put":
        uploadfile(ftp, sys.argv[5], sys.argv[6])
    ftp.quit()
