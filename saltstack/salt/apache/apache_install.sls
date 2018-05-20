apache2:
    pkg:
        - installed
        - name: {{ pillar['apache']}}
git:
    pkg:
        - installed
        - name: {{pillar['git']}}