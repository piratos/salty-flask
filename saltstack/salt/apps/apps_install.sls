dependencies:
    pkg.installed:
        - pkgs:
            - python-dev
            - python-pip
            - python-virtualenv

project_source:
    file.recurse:
        - source: salt://source/app
        - name: {{pillar['app_path']}}

virtualenv_install:
    virtualenv.managed:
        - system_site_packages: False
        - requirements: /var/www/app/requirements.txt
        - name: {{pillar['app_path']}}
        - require:
            - dependencies
