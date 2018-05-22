apache_wsgi_package:
    pkg.installed:
            - name: {{ pillar['modwsgi']}}
            - require:
                    - pkg: {{ pillar['apache']}}

apache_conf_file:
    file.managed:
            - source: salt://source/configs/default.conf
            - name: /etc/apache2/sites-enabled/000-default.conf
            - user: root
            - group: root
            - mode: 655
            - template: jinja

apache2_service_restart:
    service.running:
        - name: {{ pillar['apache']}}
        - watch:
            - apache_conf_file