I'm using this tutorial to create persistent Debian on flash drive:
http://wiki.debian.org/DebianLive/Howto/Custom_Install

Probably easiest way to set up building process is:
1) Run (all under root):
  # lh_config -d lenny -b iso
2) Replace generated configuration with version from repository.
3) Run:
  # time lh_build 2>&1 | tee build.log

To rebuild image run:
  # lh_clean
  # time lh_build 2>&1 | tee build.log

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

Links:
  http://wiki.debian.org/DebianLive/
  http://welinux.ru/post/814/
