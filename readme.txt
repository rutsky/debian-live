Valid for live-helper version 1.0.4-1.

I'm using this tutorial to create persistent Debian on flash drive:
http://wiki.debian.org/DebianLive/Howto/Custom_Install

Probably easiest way to set up building process is:
1) Run (all under root):
  # lh_config -d lenny -b iso
2) Replace generated configuration with version from repository.
3) Run:
  # nice -n 10 time lh_build 2>&1 | tee build.log

To rebuild image run:
  # lh_clean
  # nice -n 10 time lh_build 2>&1 | tee build.log

To improve operations with packages recommended setup packages proxy,
I'm using `approx' for that.

My /etc/approx/approx.conf:
-----
debian                  http://ftp.debian.org/debian
security                http://security.debian.org/debian-security
debian-multimedia       http://mirror.yandex.ru/debian-multimedia
opera                   http://deb.opera.com/opera
virtualbox              http://download.virtualbox.org/virtualbox/debian
-----

approx is installed on my machine, so I added in /etc/hosts:
-----
127.0.0.1 deb-proxy
-----

Statistics.
Last build was done in 2:25:26 (almost all packages was predownloaded so it
should be close to pure installation time):
-----
3349.18user 762.32system 2:25:26elapsed 47%CPU (0avgtext+0avgdata 0maxresident)k
41230696inputs+42048520outputs (10398major+64768257minor)pagefaults 0swaps
-----

Preseed.
Packages can be configured using preseed scripts, which should putted in 
config/chroot_local-preseed/.
The easiest way to create preseed file is to copy some strings from output of
$ debconf-get-selections

Links:
  http://wiki.debian.org/DebianLive/
  http://welinux.ru/post/814/
