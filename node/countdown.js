#!/usr/bin/env node
var optimist = require('optimist');


// TODO : Add finer usage text. Modularise it.
var usage = 'Starts countdown for specified duration.\nUsage: $0 [-k num] [-s num] [-m num] [-h num]';

var argv = optimist
	.usage(usage)
	.wrap(80)
	.boolean('help')
	.describe('help','Prints this help information. All other options are ignored.')
	.options({'k' : {
		alias : 'milliseconds',
		default : 0,
		describe : 'duration in milliseconds'
	},
	's' : {
		alias : 'seconds',
		default : 0,
		describe : 'duration in seconds'
	},
	'm' : {
		alias : 'minutes',
		default : 0,
		describe : 'duration in minutes'
	},
	'h' : {
		alias : 'hours',
		default : 0,
		describe : 'duration in hours'
	}})
    .argv;

// Check if command has been invoked with ```--help``.
// If so,
// - Should only print the help information.
// - Ignore other options.
// - Exit with success.
if (argv.help) {
	optimist.showHelp();
	process.exit(code=0);
}

// Total milliseconds to countdown, set to 0 as initial value
var duration = 0;

// Adds to duration what all options are given during command invocation.
duration += argv.k;
duration += argv.s*1000;
duration += argv.m*1000*60;
duration += argv.h*1000*60*60;

// TODO : Obligatory information to use. May be we should remove it or make it better.
console.log('Countdown set for %d milliseconds', duration);


// The function that is called after the countdown ends.
// By default it prints ```'Time is now!'``` to console.
// TODO : What action is performed should be configurable.
var announce = function() {
    console.log('Time is now!');
}

setTimeout(announce, duration);