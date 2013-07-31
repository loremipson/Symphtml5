# Symphtml5 #

- Version: 1.0.0
- Date: 31st July 2013
- Github Repository: <https://github.com/Implemint/Symphtml5>


## Overview

Symphtml5 is a simple HTML5 starter workspace for [Symphony CMS](http://symphony-cms.com/). It's purpose is to take care of repetitive tasks when getting a new project up and rolling.

## Usage

Symphtml5 relies on a couple of dependencies. It doesn't *have* to, but they make the process so much less painful that I recommend it.

First, all the styles are compiled from SASS. SASS requires both Ruby, and the SASS gem to be installed on your machine. Secondly, it uses [Grunt.js](http://gruntjs.com/), so with that, you'll need to have both [node.js](http://nodejs.org/) and grunt-cli installed on your system. Grunt is used to do the following:

 1. SASS Compiling and JS Linting on the fly
 2. Watching / LiveReload
 3. Moving any extension submodules to the correct directory

Once you have the dependencies in place, you can get up and running.

### Get Symphony

Clone down the Symphony CMS repository, then change into your directory:

`git clone git://github.com/symphonycms/symphony-2.git your_directory`

`cd your_directory`

Clone down the submodules:

`git submodule update --init --recursive`

**Don't clone the default Symphony ensemble/workspace directory.**

### Get Symphtml5

Clone the Symphtml5 repository into the workspace folder, then change into it:

`git clone git://github.com/Implemint/Symphtml5 workspace`

`cd workspace`

Clone down any submodules once again:

`git submodule update --init --recursive`

Run `npm install` to get all the Grunt files ready.

Now run `grunt copy`. This will copy the `extensions/` directory into your Symphony core.

Now simply point your browser to your directory and walk through the installation process like normal.

### Developing

Once you have Symphony installed, you can use Grunt while you develop to watch for changes and run tasks on the fly. Simply run `grunt` from the inside the directory with Terminal.

####Changelog

#####1.0.0 - *July 31st, 2013*

 * Massive simplification. No longer an "Ensemble", now just a workspace folder making very few assumptions in the code.
 * Created grunt file for mundane tasks

#####0.5 - *December 31st, 2011*

 * Updated to Symphony 2.2.5
 * Removed scripts.xsl utility, replaced with xsl:template modes
 * Updated jquery to 1.7.1

#####0.4 - *August 23rd, 2011*

 * Updated to Symphony 2.2.3
 * Removed reset.css for normalize.css
 * Cleaned up some left unnecessary leftovers from previous versions
 * Added scripts.xsl back in (not sure how that went away)
 * Added in a responsive grid system

#####0.3 - *August 3rd, 2011*

 * Updated to Symphony 2.2.2
 * Updated jquery to 1.6.2
 * Removed formalize (It's nice, I just never ended up using it)

#####0.2.1 - *May 23rd, 2011*

 * Changed the readme to reflect this specific ensemble
 * Updated jquery to 1.6.1

#####0.2 - *April 28th, 2011*

 * Updated to Symphony 2.2.1
 * Bug fix for incorrect workspace variable in scripts
 * Moved scripts to a separate utility
 * Changed jquery to 1.6

#####0.1 - *March 3rd, 2011*

 * Initial commit