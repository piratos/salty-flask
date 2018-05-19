apache_wsgi_package:
    pkg.installed:
            - name: libapache2-mod-wsgi
            - require:
                    - pkg: apache2

/etc/apache2/sites-enabled/000-default.conf:
    file.managed:
            - source: salt://source/configs/default.conf
            - user: root
            - group: root
            - mode: 655
apache2_service_up:
    service:
        - name: apache2
        - running