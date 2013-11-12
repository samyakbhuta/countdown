### Purpose

```countdown``` command in all languages possible. It is an adventure in [chrestomathy](http://en.wikipedia.org/wiki/Chrestomathy). We seek to explore following.

* How it is to write something useful in a particular language and not just 'Hello World'.

* To have an opportunity to understand things that are woven around a particular language and make up important part of the overall developer expirience. This includes communities, libraries, package management, environment setup etc. Ideally entire expirience should be documented as well.


### Specification

* ```countdown``` should refer to a specific binary and should not be a binary command. E.g. ```countdown``` may be aliased to ```countdown-node``` to showcase the command implemented using Node runtime. Of course ```countdown-node``` can be used directly as well.

* Following all simply outputs ```Time is now!``` string.

	* ```countdown``` outputs immediately as there is no duration provided. Here the duration is taken to be 0.

	* ```countdown --milliseconds 2000``` or ```countdown -k 2000``` outputs after 2000 milliseconds.

	* ```countdown --seconds 20``` or ```countdown -s 20``` outputs after 20 seconds.

	* ```countdown --minutes 10``` or ```countdown -m 10``` outputs after 10 minutes.

	* ```countdown --minutes 10.5``` or ```countdown -m 10.5``` outputs after 10.5 minutes.

	* ```countdown --hours 2``` or ```countdown -h 2``` outputs after 2 hours.

	* ```countdown --hours 1.5``` or ```countdown -h 1.5``` outputs after 1.5 hours.

	* ```countdown -m 2.5 -s 15``` outputs after 150+15 seconds. Various such combination should be possible.

	* Options aliases list (and tolerance to spelling mistakes)
		* k, mil, mils, mill, mills, milisecond, millisecond, miliseconds, milliseconds
		* s, sec, secs, second, seconds
		* m, min, mins, minute, minutes
		* h, hr, hrs, hour, hours

	* ```countdown --help``` displays the usage and exits.
	* ```countdown --version``` displays the version and which implementation it is pointing to and exits.

* ```.countdownrc``` file should be consulted.

* Support for installation.

* Support for uninstallation.

### Aliasing

* Use ```alias``` to alias ```countdown``` to a specific implementation. E.g., following code aliases to a Node implementation.

	```
	alias countdown='countdown-node'
	```

* Use ```unalias``` to remove the alias.

	```
	unalias countdown
	```

* If you want to see which implementation the ```countdown``` is aliased to, use following command.

	```
	alias | grep 'countdown'
	```