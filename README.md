## Salty-salt
This is a salt formula that installs apache and configure it to run a given flask web application

## Vagrant
- The salt formula is shipped with a vagrant file that spawns a ubuntu truty server where the salt formula will be executed.
- The ubuntu instance is a masterless salt minion, vagrant will run the formula as its provision task.
- The flask application is shipped all along the apache configutration file

## Files
The repo contains:
salt
* |__ etc/minion (Saltstack masterless minion config)

* |__ sources/apps (Contains the source code of the flask application)

* |__ sources/config (Contains the apache conf file to be copied to the minion)

* |__ pillar (Contains the static data files)

* |__ apache (contains the salt formulas to install and configure apache)

* |__ apps (contains the salt formulas to install the project files)

## TODO
* [x] Configure apache
* [x] COnfigure mod-wsgi
* [x] Use virtualenv to separate the project dependies
* [x] Use salt pillar for os-linked packages and apache configuration
* [ ] Use reactor to trigger auto deployment
