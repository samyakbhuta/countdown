#!/bin/bash

# This is not fully automated test. It just relieves you from typing the command again and again.
# TODO: More sophisticated approach for asserting the result need to be incorporated.

Command="node countdown.js"
# Other equvivalent alternative commands
# Command="node ."
# Command="countdown-node"


# --version
echo '~~~~'
echo 'TEST: --version: Should exit after displaying version information'
$Command . --version

# --help
echo '~~~~'
echo 'TEST: --help: Should exit after displaying usage text'
$Command . --help

# No arguments
echo '~~~~'
echo 'TEST: Without any arguments. Should exit immediately'
$Command

# Milliseconds
echo '~~~~'
echo 'TEST: --milliseconds 100 : Should exit after 100 milliseconds'
$Command --milliseconds 100

echo '~~~~'
echo 'TEST: -k 15 : Should exit after 15 milliseconds'
$Command -k 15

# Seconds
echo '~~~~'
echo 'TEST: --seconds 10 : Should exit after 10,000 milliseconds'
$Command --seconds 10

echo '~~~~'
echo 'TEST: -s 10 : Should exit after 10,000 milliseconds'
$Command . -s 10

echo '~~~~'
echo 'TEST: -s 5.5 : Should exit after 5,500 milliseconds'
$Command . -s 5.5

# Minutes
echo '~~~~'
echo 'TEST: --minutes 1 : Should exit after 60,000 milliseconds'
$Command --minutes 1

echo '~~~~'
echo 'TEST: -m 1 : Should exit after 60,000 milliseconds'
$Command . -m 1

echo '~~~~'
echo 'TEST: -m 1.5 : Should exit after 90,000 milliseconds'
$Command . -m 1.5

# Hours
echo '~~~~'
echo 'TEST: --hours 1 : Should exit after 3,600,000 milliseconds'
$Command --hours 1

echo '~~~~'
echo 'TEST: -h 1 : Should exit after 3,600,000 milliseconds'
$Command . -h 1

# Combinations
echo '~~~~'
echo 'TEST: -s 5.5 -k 1 : Should exit after 5,501 milliseconds'
$Command . -s 5.5 -k 1

echo '~~~~'
echo 'TEST: -s 5.5 -k 1 -m 1 : Should exit after 65,501 milliseconds'
$Command . -s 5.5 -k 1 -m 1

echo '~~~~'
echo 'TEST: -s 5.5 -k 1 -m 1 : Should exit after 65,501 milliseconds'
$Command . -k 1 -s 5.5 -m 1

# Aliases (Not Complete Yet)
echo '~~~~'
echo 'TEST: --millisecond 100 : Should exit after 100 milliseconds'
$Command --milliseconds 100

echo '~~~~'
echo 'TEST: --mills 100 : Should exit after 100 milliseconds'
$Command --mills 100

echo '~~~~'
echo 'TEST: --second 10 : Should exit after 10,000 milliseconds'
$Command --second 10

echo '~~~~'
echo 'TEST: --secs 10 : Should exit after 10,000 milliseconds'
$Command --secs 10

echo '~~~~'
echo 'TEST: --sec 10 : Should exit after 10,000 milliseconds'
$Command --secs 10

echo '~~~~'
echo 'TEST: --minute 1 : Should exit after 60,000 milliseconds'
$Command --minute 1

echo '~~~~'
echo 'TEST: --mins 1 : Should exit after 60,000 milliseconds'
$Command --mins 1

echo '~~~~'
echo 'TEST: --min 1 : Should exit after 60,000 milliseconds'
$Command --min 1

echo '~~~~'
echo 'TEST: --hour 1 : Should exit after 3,600,000 milliseconds'
$Command --hour 1

echo '~~~~'
echo 'TEST: --hrs 1 : Should exit after 3,600,000 milliseconds'
$Command --hrs 1

echo '~~~~'
echo 'TEST: --hr 1 : Should exit after 3,600,000 milliseconds'
$Command --hr 1

# Spelling Mistake Tolerance ( Not complete, can it be complete ?)

echo '~~~~'
echo 'TEST: --millisecond 100 : Should exit after 100 milliseconds'
$Command --millisecnds 100
