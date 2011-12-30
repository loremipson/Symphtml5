# Symphtml5 #

- Version: 0.5
- Date: 30th December 2011
- Release Notes: <http://symphony-cms.com/download/ensembles/view/63167/>
- Github Repository: <https://github.com/Implemint/Symphtml5>


## Overview

Symphtml5 is a simple base / starter ensemble for [Symphony CMS](http://symphony-cms.com/), and serves a purpose similar to the popular [HTML5 Boilerplate](http://html5boilerplate.com/). This repository represents Symphony CMS version "2.2.5" and is considered stable.

### Symphony Server Requirements

- PHP 5.2 or above
- PHP's LibXML module, with the XSLT extension enabled (--with-xsl)
- MySQL 5.0 or above
- An Apache or Litespeed webserver
- Apache's mod_rewrite module or equivalent

## Installing Symphtml5

### Via Git

1. Clone the git repository to the location you desire using:

		git clone git@github.com:Implemint/Symphtml5.git

	Should you wish to make contributions back to the project, fork the master tree rather than cloning, and issue pull requests via github.

2. Point your web browser at <http://yourwebsite.com/install.php> and provide
details for establishing a database connection and about your server environment.

### Via the old fashioned way

1. This step assumes you downloaded a zip archive from the [Symphony website](http://symphony-cms.com/download/ensembles/view/63167/), or the [Github repository](https://github.com/Implemint/Symphtml5).
Upload the following files and directories to the root directory of your website:
	- humans.txt
	- index.php
	- install.php
	- install.sql
	- robots.txt
	- /symphony
	- /workspace
	- /extensions

2. Point your web browser at <http://yourwebsite.com/install.php> and provide
details for establishing a database connection and about your server environment.

## Security

**Secure Production Sites: Change permissions and remove installer files.**

1. For a smooth install process, change permissions for the `root` and `workspace` directories.

	cd /your/site/root
	chmod -R 777 workspace

2. Once successfully installed, change permissions as per your server preferences, E.G.

	chmod 755 .

3. Remove installer files (unless you're fine with revealing all your trade secrets):

	rm install.php install.sql workspace/install.sql update.php
