#!/bin/bash

# This is not fully automated test. It just relieves you from typing the command again and again.
# TODO: More sophisticated approach for asserting the result need to be incorporated.

Command="node countdown.js"
# Other equvivalent alternative commands
# Command="node ."
# Command="countdown-node"

echo '~~~~'
echo 'TEST: Without any arguments. Should exit immediately'
$Command

echo '~~~~'
echo 'TEST: --seconds 10 : Should exit after 10,000 milliseconds'
$Command --seconds 10

echo '~~~~'
echo 'TEST: -s 10 : Should exit after 10,000 milliseconds'
$Command . -s 10

echo '~~~~'
echo 'TEST: -s 5.5 : Should exit after 5,500 milliseconds'
$Command . -s 5.5

echo '~~~~'
echo 'TEST: -s 5.5 -k 1 : Should exit after 5,501 milliseconds'
$Command . -s 5.5 -k 1

echo '~~~~'
echo 'TEST: -s 5.5 -k 1 -m 1 : Should exit after 65,501 milliseconds'
$Command . -s 5.5 -k 1 -m 1