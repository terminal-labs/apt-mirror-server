setup_apt_mirror:
  pkg.installed:
    - pkgs:
      - apt-mirror

/etc/apt/mirror.list:
  file.managed:
    - source: salt://mirror.list

/var/www/html/debian:
  file.symlink:
    - target: /var/spool/apt-mirror/mirror/ftp.us.debian.org/debian

/var/www/html/apt:
  file.symlink:
    - target: /var/spool/apt-mirror/mirror/repo.saltstack.com/apt
