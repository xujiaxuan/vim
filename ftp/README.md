---
# ftp server
## vsftp
### install
sudo apt-get install vsftp

## pyftpdlib
sudo pip install pyftpdlib  [pyftpdlib][]

### start vsftp
sudo service vsftpd start (use /home/username dir)
/etc/vsftpd.conf write_enable=YES

### start pyftpdlib
python -m pyftpdlib -p 21

# ftp client
## ftp
ftp ip
username or anonymous
passwd or empty character
get/put

## chrome
ftp://localhost/

## python
/* TODO: write ftp.py */

# http server
python -m SimpleHTTPServer 80
# http client
http://localhost:80

[pyftpdlib]: https://github.com/giampaolo/pyftpdlib
