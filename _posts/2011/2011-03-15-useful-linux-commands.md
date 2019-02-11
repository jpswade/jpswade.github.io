---
id: 106
title: Useful Linux Commands
date: 2011-03-15T16:47:59+00:00
author: admin
layout: post
guid: http://wade.be/useful-linux-commands/
aktt_notify_twitter:
  - yes
layout: post
---

Here's a set of _Useful Linux Commands_ I've historically found useful, hopefully you will too...

<!--more-->

## Check a disk
```
yum install smartmontools
/usr/sbin/smartctl -i /dev/sda
/usr/sbin/smartctl -t short /dev/sda
/usr/sbin/smartctl -a /dev/sda
```

## Set FSCK at reboot
```
touch /forcefsck
echo AUTOFSCK_DEF_CHECK=yes>>/etc/sysconfig/autofsck
```

## Save a cron
`crontab -l>$USER+$HOSTNAME.cron`

## Load a cron
`crontab $USER+$HOSTNAME.cron`

## ClamAV ERROR: Malformed database
```
rm -fr /usr/share/clamav/daily.cvd
rm -fr /usr/share/clamav/main.cld
rm -fr /usr/share/clamav/mirrors.dat
/usr/local/cpanel/3rdparty/bin/freshclam
/scripts/restartsrv_clamd
```
## Setup ClamAV to update daily
```
echo #!/bin/sh>/etc/cron.daily/freshclam
echo /usr/local/cpanel/3rdparty/bin/freshclam --quiet>/etc/cron.daily/freshclam
chmod 755 /etc/cron.daily/freshclam
```

## Replace strings in files
```
sed -e ‘s/OLDUSERNAME/NEWUSERNAME/g’ /etc/users > /etc/users2
mv -f /etc/users2 /etc/users
```
## bash: vzctl: command not found
`export PATH=$PATH:/usr/sbin:/sbin`

## Read exim log
`tail -f /var/log/exim_mainlog`

## Read maillog (dovecot)
`tail -f /var/log/maillog`

## Edit the dovecot (pop3) config
`nano -w /etc/dovecot/dovecot.conf`

## Virus scan using clamav
```
for i in `awk '!/nobody/{print $2 | "sort | uniq" }' /etc/userdomains | sort | uniq`; do /usr/local/cpanel/3rdparty/bin/clamscan -i -r /home/$i 2>>/dev/null; done >> /root/infections
```

## How to monitor the server during high load
```
top
sar
#eg: sar -f /var/log/sa/sa`date +%d` | less
```
## Search for string in files, out filename, and line number
`grep -H -r "string here" /home/user/`

## Filter files
`ls -allh | grep Oct | awk {'print $9'} | xargs file`

## Mirror an MP3 site
`wget -dc -np -H --mirror -UMSIE6 -Amp3 <URL>`

## Archive files
```
tar -cf backup.tar file1.txt file2.txt file3.txt
tar -cfz backup.tar.gz dir
```

## Search messages log for named on a certain date
`cat /var/log/messages | grep named | grep "Sep 26" | grep near`

## Upgrading PHP on CentOS
### CentOS 4
```
cd
wget -q -O - http://www.atomicorp.com/installers/atomic.sh | sh
yum --en=atomic update php
```
### CentOS 5
```
cd /etc/yum.repos.d
wget http://dev.centos.org/centos/5/CentOS-Testing.repo
yum --en=c5-testing update php
```
## Setup NTP
```
yum -y install ntp
chkconfig ntpd on
ntpdate uk.pool.ntp.org
/etc/init.d/ntpd start
```
## Setup latest imagick
`cvs -d :pserver:cvsread@cvs.php.net/repository checkout pecl/imagick && cd pecl/imagick && phpize && ./configure`

## Find the distro
`cat /etc/redhat-release`

## Count lines in all php files in a dir
`find . -name "*.php" | xargs wc -l`

## Shows hard disk drives in Megs and Gigs
`df -h`

## Find out which users are taking up disk space use
```
du -sh /home/*
du /home | sort -rn
du -h /home | sort -rh
ncdu
```
## Find out which OpenVZ container is taking up disk space use
`du -sh /vz/private/*`

## Find ftp passwords
`find '/home/' -type f -name '*' -size -10000k -exec grep -i -e 'ftp\:\/\/.*\:.*\@.*' {} \;`

## Hardware Details
### Prerequisites
`apt-get install dmidecode`
or
`yum install dmidecode`

Usage: `dmidecode | more`
```
echo 'Type: ' `/usr/sbin/dmidecode --string system-product-name`
echo 'Serial: ' `/usr/sbin/dmidecode --string system-serial-number`
echo 'RAM: ' `grep '^MemTotal:' /proc/meminfo | awk '{ mem=($2)/(1024)/1024 ; printf "%0.0fGB\n", mem }'`
echo 'CPU: ' `grep -c ^processor /proc/cpuinfo`x `grep 'model name' /proc/cpuinfo | uniq | awk -F': ' '{print $2}'`
echo 'HDD: ' `df -h | awk 'BEGIN {tot=0} {tot=tot+$1} END {print (tot)}'GB`
```
## Finds .htaccess that have errordocument 401 in them
find /home/ -type f -name '.htaccess' -exec grep "ErrorDocument 401" {} \; -print`

## Config the firewall from an interface
`system-config-securitylevel`

## Watch your messages constantly
`tail -f /var/log/messages`

## Set HOSTNAME
`nano /etc/sysconfig/network`

## Configure network
`system-config-network`

## Port forwarding for VNC
`/sbin/iptables -A PREROUTING -t nat -p tcp -d $NATIP --dport 5900 -m state --state NEW,ESTABLISHED,RELATED -j DNAT --to 192.168.0.2:5900`

## Port forwarding for HTTPD
`/sbin/iptables -A PREROUTING -t nat -p tcp -d $NATIP --dport 81 -m state --state NEW,ESTABLISHED,RELATED -j DNAT --to 192.168.0.2:80`

## Startup
`chkconfig [--level <levels>] <name> <on|off|reset>`

eg: `chkconfig --add pure-ftpd`
`chkconfig --level 345 pure-ftpd on`

or

`ntsysv`

## Change password via command line

### requires: apt-get install whois (for mkpasswd)

`usermod -p `mkpasswd -H md5 password``

alternative

`echo df90jk42390kd | passwd backup --stdin`

## Watch the httpd/monitor apache

`cd /proc;watch " ls -al */cwd|grep public_html"`

## Monitor apache httpd logs

```
tail -f /usr/local/apache/logs/error_log
tail -f /usr/local/apache/logs/access_log
tail -f /usr/local/apache/logs/*
```
or
```
tail -f /var/log/httpd/error_log
tail -f /var/log/httpd/access_log
tail -f /var/log/httpd/*
```

## Show all processes

This command will show all active processes in a tree view:

`ps auxfc`

## Top 10 memory using processes

`ps -auxf | sort -nr -k 4 | head -10`

## Using netstat

### How to list the connections to port 80

`netstat -alntp | grep :80`

### How to check the number of connections to port 80

`netstat -alntp | grep :80 | wc -l`

### How to list the remote IPs connecting to your server on port 80

`netstat -alntp | grep :80 | awk '{print $5}' | cut -d: -f1 | sort`

### How to list the uniq remote IPs and the number of connections from each IP

`netstat -alntp | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n`

## MySQL Top

### Quick and dirty:

`watch mysqladmin proc`

### Full featured (if installed):

`mytop`

## Change shell

`chsh <user> -s /bin/bash`

This will change the shell to bash for the <user>.

## Migrate MySQL database

```
mysqldump tom_wp > tom_wp.sql
mysql dave_wp < tom_wp.sql
```

## Find possible malicious code infections
```
grep -r "base64_decode" .
grep --include="*.php" -r "base64_decode" . | grep -v '.off' | grep -v 'virtfs' | more
grep --include="*.php" -r "String.fromCharCode" . | grep -v '.off' | grep -v 'virtfs' | more
```

## Force Reinstall MySQL daemon
```
service mysqld stop
rm -fr /var/lib/mysql
mv -f /etc/my.cnf /etc/my.cnf.old
rm /var/log/mysqld.log*
yum remove mysql-server
yum install mysql-server
service mysqld start
```

## Set the timezone

### Using system-config-date

```
yum install system-config-date
system-config-date
```

Or, just files:

```
echo 'Europe/London' >/etc/timezone
ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime
```

## Setup Xdebug

```
yum install php-devel gcc gcc-c++ autoconf automake
pecl install Xdebug
echo "; Enable xdebug extension module" > /etc/php.d/xdebug.ini
echo ";extension=xdebug.so" >> /etc/php.d/xdebug.ini
echo "zend_extension=/usr/lib/php/modules/xdebug.so" >> /etc/php.d/xdebug.ini
```

## Troubleshoot /bin/rm: Argument list too long

`find . -name '*.phurix.com*' -print0 | xargs -0 rm`

## cPanel virus scan using clamav

```
for i in `awk '!/nobody/{print $2 | "sort | uniq" }' /etc/userdomains | sort | uniq`; do /usr/local/cpanel/3rdparty/bin/clamscan -i -r /home/$i 2>>/dev/null; done >> /root/infections&
```

## Live tail of the cPanel error log

`tail -f /usr/local/cpanel/logs/error_log`

## Tail the httpd error log

`tail -f /etc/httpd/logs/error_log`

## Tail the httpd access log

`tail -f /etc/httpd/logs/access_log`

## Force restart the HTTPD

`killall httpd; /scripts/restartsrv_httpd`

## Restart MySQL service

`/scripts/restartsrv_mysql`

## Suspend/Unsuspend? a user account

```
/scripts/suspendacct <username>
/scripts/unsuspendacct <username>
```

## List of all the error_log files on the server

`find /home -name error_log`

## Find large files (over 1gb) on disk

`find / -type f -size 1000000k`

## Force a Backup to run on cPanel

`/usr/local/cpanel/bin/backup --force`

* [LinuxUseful](https://docs.google.com/document/d/1aML9_eNrJs9CPkgzS0Ggr6u-V4BqBJjpZJosOxJT2xw/pub) (Google Drive)

<span style="text-decoration: line-through;">linux.txt</span>
