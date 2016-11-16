---
id: 127
title: Configuring a FreeBSD IRC Shell Server
date: 2007-08-22T21:46:59+00:00
author: admin
layout: post
guid: /configuring-a-freebsd-irc-shell-server
permalink: /configuring-a-freebsd-irc-shell-server/
categories:
  - Internet
tags:
  - Apache
  - FreeBSD
---
<p class="lead">
  This is a brief guide created to help configure a secure FreeBSD as an IRC shell server.
</p>

In this case I will be running FreeBSD 6.0, with bash shell, SSHd, named (bind), httpd (Apache2+PHP4), FTPd (pure-ftpd).<!--more-->

Note: In many cases, if you don&#8217;t wish to review the config when adding to it you can do: echo &#8216;<string>&#8217; >> <file> (ie: echo &#8216;accounting_enable=&#8221;YES&#8221;&#8216; >> /etc/rc.conf)

**sshd**

  * edit /etc/ssh/sshd_config
  * Add line &#8220;Port 22&#8221; &#8211; This is default, BUT change to another port if you want to be even more secure.
  * Add line &#8220;Protocol 2&#8221; &#8211; We don&#8217;t want protocol 1, just 2.
  * Add line &#8220;LoginGraceTime 1m&#8221; &#8211; If you don&#8217;t login within 1 min, it will timeout.
  * Add line &#8220;PermitRootLogin no&#8221; &#8211; You should not allow direct root login via ssh, use su.
  * Add line &#8220;MaxAuthTries 3&#8221; &#8211; If you get your login incorrect 3 times, you&#8217;re doing something wrong anyway.
  * Add line &#8220;X11Forwarding no&#8221; &#8211; You don&#8217;t run Xwindows on a server muppet!
  * Add line &#8220;MaxStartups 15:30:60&#8221; &#8211; This means, after 15 concurrent unauthed connections, 30% of connections will be dropped, until it reaches a max of 60, then it&#8217;s full.

**sysctl**

  * You can read each current setting by doing sysctl <setting> (ie: sysctl kern.securelevel)
  * If you are unsure about using a setting you can use &#8220;sysctl -w <setting>&#8221; to temporary set, until you next reboot.
  * edit /etc/sysctl.conf
  * Add line &#8220;security.bsd.see\_other\_uids=0&#8221; &#8211; We don&#8217;t want users to see each other&#8217;s processes.
  * Add line &#8220;kern.securelevel=1&#8221; &#8211; By default it is -1, you don&#8217;t need this unless you&#8217;re running Xwindows, run at least 0.
  * Add line &#8220;net.inet.tcp.blackhole=2&#8221; &#8211; This will drop ALL tcp packets that are received on a CLOSED port and not reply.
  * Add line &#8220;net.inet.udp.blackhole=1&#8221; &#8211; This will drop ALL udp packets that are received on a CLOSED port and not reply.
  * Add line &#8220;kern.ipc.somaxconn=1024&#8221; &#8211; Default is 128, this means we can have more concurrent connections. If like you me you have plenty of bandwidth, this is best, otherwise if you get attacked, you&#8217;ll reach 128 very quickly.
  * Add line &#8220;net.inet.icmp.icmplim=50&#8221; &#8211; Default is 200, you shouldn&#8217;t need this many, set it to 50 to reduce the amount of ICMPs sent back per second.
  * Add line &#8220;net.inet.ip.rtexpire=2&#8221; &#8211; Default is 3600, See the [FreeBSD handbook: Denial Of Service Attacks](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/securing-freebsd.html#AEN18452).
  * Add line &#8220;net.inet.ip.rtminexpire=2&#8221; &#8211; Default is 10, See the [FreeBSD handbook: Denial Of Service Attacks](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/securing-freebsd.html#AEN18452).
  * Add line &#8220;net.inet.tcp.always_keepalive=1&#8221; &#8211; This will help discover dead connections and clears them.
  * Add line &#8220;net.inet.ip.random_id=1&#8221; &#8211; This is optional, but I like the idea. It gives you random PIDs instead of sequential.

This is my &#8220;/etc/sysctl.conf&#8221;:

> security.bsd.see\_other\_uids=0
  
> kern.securelevel=1
  
> net.inet.tcp.blackhole=2
  
> net.inet.udp.blackhole=1
  
> kern.ipc.somaxconn=1024
  
> net.inet.icmp.icmplim=50
  
> net.inet.ip.rtexpire=2
  
> net.inet.ip.rtminexpire=2
  
> net.inet.tcp.always_keepalive=1
  
> net.inet.ip.random_id=1

**rc.conf**

  * edit /etc/rc.conf
  * Add line &#8216;portmap_enable=&#8221;NO&#8221;&#8216; &#8211; You only need this if you&#8217;re using NFS, which we&#8217;re not.
  * Add line &#8216;sendmail_enable=&#8221;NO&#8221;&#8216; &#8211; This will tell sendmail to only listen on the localhost, it&#8217;s not a good idea to leave a mail server open to spam on a shell server.
  * Add line &#8216;nfs\_server\_enable=&#8221;NO&#8221;&#8216; &#8211; As above, we don&#8217;t need NFS.
  * Add line &#8216;nfs\_client\_enable=&#8221;NO&#8221;&#8216; &#8211; Again, no NFS, not even a client.
  * Add line &#8216;accounting_enable=&#8221;YES&#8221;&#8216; &#8211; This enables [process accounting](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/security-accounting.html). (You need to do touch /var/account/acct && accton /var/account/acct).
  * Add line &#8216;clear\_tmp\_enable=&#8221;YES&#8221;&#8216; &#8211; This will clear the &#8220;/tmp&#8221; dir at boot time.
  * Add line &#8216;syslogd_flags=&#8221;-ss&#8221;&#8216; &#8211; This stops syslogd from broadcasting on port 514.
  * Add line &#8216;enable_quotas=&#8221;YES&#8221;&#8216; &#8211; Assuming you&#8217;re running a shell server, you want quotas enabled.
  * Add line &#8216;check_quotas=&#8221;YES&#8221;&#8216; &#8211; This will help keep your users within their quotas.
  * Add line &#8216;ntpdate_enable=&#8221;YES&#8221;&#8216; &#8211; This will enable ntpdate, which will keep your date/time up-to-date.
  * Add line &#8216;update_motd=&#8221;NO&#8221;&#8216; &#8211; This will ensure that the FreeBSD details aren&#8217;t added to the /etc/motd on each reboot. We don&#8217;t want to broadcast this information.
  * Check for &#8216;inetd\_enable&#8217; &#8211; Set it to NO, or add inetd\_enable=&#8221;NO&#8221;, if it&#8217;s not there.
  * Check for &#8216;named_enable&#8217; &#8211; Okay, so running named will increase overheads, but if this is a shell box it probably makes sense to run your own dns server as IRC relies a lot on resolving hosts.
  * Check for &#8216;log\_in\_vain&#8217; &#8211; You may have set this based on what you read else where, but I recommend having this as &#8220;NO&#8221;, because it logs events on non-open ports, which could cause a ddos.

The latter half of my &#8220;/etc/rc.conf&#8221; looks like this:

> inetd_enable=&#8221;NO&#8221;
  
> linux_enable=&#8221;YES&#8221;
  
> sshd_enable=&#8221;YES&#8221;
> 
> portmap_enable=&#8221;NO&#8221;
  
> sendmail_enable=&#8221;NO&#8221;
  
> nfs\_server\_enable=&#8221;NO&#8221;
  
> nfs\_client\_enable=&#8221;NO&#8221;
  
> accounting_enable=&#8221;YES&#8221;
  
> clear\_tmp\_enable=&#8221;YES&#8221;
  
> syslogd_flags=&#8221;-ss&#8221;
  
> enable_quotas=&#8221;YES&#8221;
  
> check_quotas=&#8221;YES&#8221;
  
> ntpdate_enable=&#8221;YES&#8221;
  
> update_motd=&#8221;NO&#8221;
  
> named_enable=&#8221;YES&#8221;

**Firewall**

For a shell server, a firewall may not be required, but for many others it may be required.

  * edit /etc/firewall.rules &#8211; for a shell server, you can do the following: 
      * You need to allow new connections for services on the following ports: 21 (ftpd), 22 (sshd), 53 (dns), 80 (httpd).
      * If you are running any other core services, you will need to open the ports for those too. Remember, the first 1024 ports are reserved for root services.
      * If you run an IRC shell server, you should open a range (ie: 2000-4000) for your users services. (such as eggdrops and psybncs).
      * No other new connections to other ports should be allowed.
      * All other traffic is okay.
  * Don&#8217;t forget to &#8220;chmod 600 /etc/firewall.rules&#8221;
  * Add line &#8216;firewall_enable=&#8221;YES&#8221;&#8216; &#8211; We want a firewall enabled.
  * Add line &#8216;firewall_logging=&#8221;YES&#8221;&#8216; &#8211; Logging the firewall can be useful.
  * Add line &#8216;firewall_script=&#8221;/etc/firewall.rules&#8221;&#8216; &#8211; It needs to know where to find the rules. (don&#8217;t forget to touch /etc/firewall.rules)

**Date and Time**

You must ensure your system&#8217;s date/time is correct, otherwise SSH may fail and logs will be incorrect.

  * As above, ensure you have &#8216;ntpdate_enable=&#8221;YES&#8221;&#8216; in your &#8220;rc.conf&#8221;.
  * For first time use: &#8220;touch /etc/ntp.conf && echo /etc/ntp.conf >> server uk.pool.ntp.org prefer && echo /etc/ntp.conf >> driftfile /var/db/ntp.drift&#8221;
  * Run: ntpdate uk.pool.ntp.org

**Login.conf**

Using [login.conf](http://www.freebsd.org/cgi/man.cgi?query=login.conf&sektion=5) you can create custom classes for your users giving them all sorts of limits and restrictions.

  * edit /etc/login.conf
  * If you change the &#8220;passwd\_format&#8221; in the Default class to read &#8220;:passwd\_format=blf:\&#8221;, this will give you blowfish password hashes, for better security, but you need to rebuild your login database by doing: &#8220;cap\_mkdb /etc/login.conf&#8221;, and update all passwords by doing &#8220;passwd <user>&#8221; as root (check &#8220;/etc/master.passwd&#8221; all passwords will start with $2 if done correctly), don&#8217;t forget to edit /etc/auth.conf to &#8220;crypt\_default=blf&#8221; also. This step isn&#8217;t required, but recommended.
  * There are lots more options, you need to read the handbook for the &#8220;[login.conf](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/users-limiting.html)&#8221; file.
  * Run &#8220;cap_mkdb /etc/login.conf&#8221; when you&#8217;re done to update the database.

**pure-ftpd**

Instructions are as follows:

  * cd /usr/ports/ftp/pure-ftpd && make install
  * cp /usr/local/etc/pure-ftpd.conf.sample /usr/local/etc/pure-ftpd.conf
  * edit /usr/local/etc/pure-ftpd.conf (if required) 
      * Change &#8220;NoAnonymous no&#8221; to yes
  * /usr/local/sbin/pure-config.pl /usr/local/etc/pure-ftpd.conf
  * echo &#8216;<font size="-1">pureftpd_enable=&#8221;YES&#8221;</font>&#8216; >> /etc/rc.conf

**Apache 2**

  * edit /usr/local/etc/apache2/httpd.conf
  * change the &#8220;ServerAdmin&#8221; line with your email address.
  * change the &#8220;ServerTokens&#8221; line from &#8220;Full&#8221; to &#8220;Prod&#8221;, this means only &#8220;Apache&#8221; will be displayed.
  * echo &#8216;<font size="-1">httpd_enable=&#8221;YES&#8221;</font>&#8216; >> /etc/rc.conf

**oidentd**

  * echo <font size="-1">&#8216;oidentd_enable=&#8221;YES&#8221;</font>&#8216; >> /etc/rc.conf
  * edit /usr/local/etc/oidentd.conf
  * Ensure the defaults deny everything, and that root has a different reply, ie:

> default {
  
> default {
  
> deny spoof
  
> deny spoof_all
  
> deny spoof_privport
  
> deny random
  
> deny random_numeric
  
> deny numeric
  
> deny hide
  
> }
  
> }
> 
> user root {
  
> default {
  
> force reply &#8220;UNKNOWN&#8221;
  
> }
  
> }

Note: You can add a user, if you want to allow spoof for certain users, and allow that.

**Files and Permissions**

  * &#8220;find / -perm -2000 -ls && find / -perm -4000 -ls&#8221; &#8211; This lists binaries that everyone can currently access.
  * Use &#8220;chmod a-s <file>&#8221; to remove access or &#8220;chmod o-rwx <file>&#8221; to allow just for wheel users.
  * &#8220;chmod 640 /etc/crontab&#8221; &#8211; This will allow only root and wheel users to see it. Users don&#8217;t need to know what processes are started by cron.
  * &#8220;chmod 600 /etc/rc.conf&#8221; &#8211; Users don&#8217;t need to access this.
  * &#8220;chmod 600 /etc/sysctl.conf&#8221; &#8211; Users don&#8217;t need to access this.
  * &#8220;chmod 0750 /root&#8221; &#8211; Stops non-wheel users from viewing root files.
  * &#8220;chmod 640 /var/db/locate.database&#8221; &#8211; You don&#8217;t want all users to see all the files on your system.
  * edit /etc/motd &#8211; Change this to say what you like.
  * &#8220;touch /etc/COPYRIGHT&#8221; &#8211; This will remove the copyright info.

**ToDo**

  * Provide an in-depth example of a firewall script
  * Provide details about working with Quotas
  * Provide better usage of login.conf

**Additional Security**

  * Try [checking system integrity with tripwire](http://www.onlamp.com/pub/a/bsd/2003/03/20/FreeBSD_Basics.html).
  * Keep things up to date with [cvsup](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/cvsup.html).

**Resources**

  * [FeeBSD Security Information](http://www.freebsd.org/security/)
  * [Defcon1 Security Guide](http://www.defcon1.org/html/Security/Secure-Guide/secure-guide.html)
  * [A basic guide to securing FreeBSD (DALnet)](http://www.dal.net/admin/vote/seceval.php3)
  * [Hardening FreeBSD (bsdguides.org)](http://www.bsdguides.org/guides/freebsd/security/harden.php)
  * [Protecting yourself with FreeBSD](http://silverwraith.com/papers/freebsd-ddos.php)
  * [sysctl.conf Sample (Freebsdblog.org)](http://www.freebsdblog.org/archives/2005/06/a_sample_of_etc_1.html)
  * [Securing FreeBSD (ONlamp.com)](http://www.onlamp.com/pub/a/bsd/2002/08/08/FreeBSD_Basics.html)
  * [FreeBSD Security HowTo (windowssecurity.com)](http://www.windowsecurity.com/whitepapers/FreeBSD_Security_HowTo.html)
  * [tris&#8217; FreeBSD setup info](http://www.ethereal.net/~tristan/freebsd/)
  * [cPanel FreeBSD Seminar](http://www.cpanel.net/docs/seminar/freebsd.pdf)

**Final notes**

I&#8217;ve written this as more of a reference, i&#8217;ve more than likely missed a few things, so feel free to add your own comments.