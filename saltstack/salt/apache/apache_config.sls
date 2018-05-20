apache_wsgi_package:
    pkg.installed:
            - name: {{ pillar['modwsgi']}}
            - require:
                    - pkg: {{ pillar['apache']}}

/etc/apache2/sites-enabled/000-default.conf:
    file.managed:
            - source: salt://source/configs/default.conf
            - user: root
            - group: root
            - mode: 655
            - template: jinja
apache2_service_up:
    service:
        - name: {{ pillar['apache']}}
        - running