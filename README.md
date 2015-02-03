ipkill
======

kills a range of IP's

* requires:
* geoip-bin
* ipcalc

made it just work like this:

```
root@somewhere:~# bin/./ipkill 255.0.0.0
This IP is reportedly from: China!
Attempting to Black hole:        255.0.0.0 - 255.255.255.255!
Last chance to hit Ctrl-C before I kill 255.255.255.0/24?
...3
..2
.1
255.255.255.0/24 null-routed.
```
 
 made command substitution a bit newer.
 made the countdown a bit better.
 
