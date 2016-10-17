---
# ftp and http server
## vsftp
### install
`sudo apt-get install vsftp`

## pyftpdlib
sudo pip install pyftpdlib  [pyftpdlib][]

### start vsftp
```
sudo service vsftpd start (use /home/username dir)
/etc/vsftpd.conf write_enable=YES
```

### start pyftpdlib
`python -m pyftpdlib -p 21`

# ftp client
## ftp
```
ftp ip
username or anonymous
passwd or empty character
get/put
```

## chrome
`ftp://localhost/`

## python
```
ftp_file.py: 	./ftp_file.py get/put <ip> <name> <passwd> <remote_file> <local_file>
ftp_dir.py: 	./ftp_dir.py get/put <ip> <name> <passwd> <local_dir> <remote_dir>
```
参考： [python ftplib模块][python ftplib模块]

# http server
`python -m SimpleHTTPServer 80`
# http client
`http://localhost:80`

[pyftpdlib]: https://github.com/giampaolo/pyftpdlib
[python ftplib模块]: http://www.cnblogs.com/kaituorensheng/p/4480512.html
