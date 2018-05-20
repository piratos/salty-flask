## Salty-salt
This is a salt formula that installs apache and configure it to run a given flask web application

## Vagrant
- The salt formula is shipped with a vagrant file that spawns a ubuntu truty server where the salt formula will be executed.
- The ubuntu instance is a masterless salt minion, vagrant will run the formula as its provision task.
- The flask application is shipped all along the apache configutration file

## TODO
* [x] Configure apache
* [x] COnfigure mod-wsgi
* [x] Use virtualenv to separate the project dependies
* [ ] Use salt pillar for os-linked packages and apache configuration
* [ ] Use reactor to trigger auto deployment
