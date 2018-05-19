dependencies:
    pkg.installed:
        - pkgs:
            - python-dev
            - python-pip
            - python-virtualenv

/var/www/app:
    file.recurse:
        - source: salt://source/app

virtualenv_install:
    virtualenv.managed:
        - system_site_packages: False
        - requirements: /var/www/app/requirements.txt
        - name: /var/www/app
        - require:
            - dependencies
