```countdown``` command in all languages possible.

### Specification

* ```countdown``` should refer to a specific binary and should not be a binary command. E.g. ```countdown``` may be aliased to ```countdown-node```.

* Following all simply outputs ```Time is now!``` string.

	* ```countdown``` outputs immediately as there is no duration provided. Here the duration is taken to be 0.

	* ```countdown --milliseconds 2000``` or ```countdown -k 2000``` outputs after 2000 milliseconds.

	* ```countdown --seconds 20``` or ```countdown -s 20``` outputs after 20 seconds.

	* ```countdown --minutes 10``` or ```countdown -m 10.5``` outputs after 10 minutes.

	* ```countdown --minutes 10.5``` or ```countdown -m 10``` outputs after 10.5 minutes.

	* ```countdown --hours 2``` or ```countdown -h 2``` outputs after 2 hours.

	* ```countdown --hours 1.5``` or ```countdown -h 1.5``` outputs after 1.5 hours.

	* Options aliases list (and tolerance to spelling mistakes)
		* k, mil, mils, mill, mills, milisecond, millisecond, miliseconds, milliseconds
		* s, sec, secs, second, seconds
		* m, min, mins, minute, minutes
		* h, hr, hrs, hour, hours

* ```.countdownrc``` file should be consulted.

* Support for installation.

* Support for uninstallation.

### Aliasing

* TODO : How to alias ?