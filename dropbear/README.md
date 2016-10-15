---
# install
`sudo apt-get install dropbear`

# start
`/usr/sbin/dropbear -p 202 -E -F`

# config file
```
/etc/default/dropbear
/etc/dropbear/dropbear_rsa_host_key
/etc/dropbear/dropbear_dss_host_key
```

# example
aim: login from host A / user a to Host B / user b.
```
a@A:ssh-keygen -t rsa
a@A:cat .ssh/id_rsa.pub
b@B:write to .ssh/authorized_keys
a@A:ssh b@B
```

# other
```
A note from one of our readers: Depending on your version of SSH you might also have to do the following changes:
1. Put the public key in .ssh/authorized_keys2
2. Change the permissions of .ssh to 700
3. Change the permissions of .ssh/authorized_keys2 to 640
```

# reference
[SSH login without password][]

[SSH login without password]: http://linuxproblem.org/art_9.html
