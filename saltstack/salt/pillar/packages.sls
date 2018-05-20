{% if grains['os_family'] == 'RedHat' %}
apache: httpd
git: git
modwsgi: mod_wsgi
{% elif grains['os_family'] == 'Debian' %}
apache: apache2
git: git-core
modwsgi: libapache2-mod-wsgi
{% endif %}

hostname: 55.55.55.5
app_path: /var/www/app
wsgi_file: app.wsgi
app_name: app
modwsgi_home: /tmp
user: nobody
group: nogroup