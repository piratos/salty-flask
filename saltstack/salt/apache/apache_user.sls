flask:
    user.present:
        - fullname: flask user
        - shell: /bin/bash
        - home: /home/flask
        - uid: 4000
        - gid: 4000
        - groups:
            - sudo
            - www-data
