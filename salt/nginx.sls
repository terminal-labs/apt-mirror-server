install_nginx:
  pkg.installed:
    - name: nginx-full
  service.running:
    - name: nginx
    - enable: True
    
/var/www/html/index.nginx-debian.html:
  file.absent

/etc/nginx/sites-enabled/default:
  file.absent

/etc/nginx/sites-enabled/nginx.conf:
  file.managed:
    - source: salt://nginx.conf

restart_nginx:
  module.run:
    - name: service.restart
    - m_name: nginx
