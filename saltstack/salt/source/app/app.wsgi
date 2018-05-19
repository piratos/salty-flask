import os
import sys
import site
site.addsitedir('/var/www/app/lib/python2.7/site-packages')
sys.path.append('/var/www/app')

activate_env = '/var/www/app/bin/activate_this.py'

execfile(activate_env, dict(__file__=activate_env))

from flask_app import app as application