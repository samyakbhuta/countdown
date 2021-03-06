node.js specific implementation for ```countdown```.

## What it does ?

* See countdown command [specification](https://github.com/samyakbhuta/countdown#specification).

## Requirements
* Node and NPM, comes bundled together. Download from [here](http://nodejs.org/download/).

## Setup for development

* ``` git clone https://github.com/samyakbhuta/countdown.git ```
* ``` cd countdown/node ```
* ``` npm install ``` to install required dependencies.
* ``` node . ``` or ``` node countdown.js ``` to run the command.
* ``` npm link ``` to install the package locally. This makes your changes reflect immediately. Use ``` npm uninstall countdown-node -g ``` to unlink.
* If you have linked the module (using above step), you can also use ``` countdown-node ``` to invoke the command.
* Use ```./test.sh ``` to have a small test run. Fully automated testing is WIP.
* [WIP] Optionally, ``` make ``` to create ``` countdown-node ``` binary using ```nexe```. 
* ``` npm uninstall countdown-node -g ``` to unlink the module. Note, ```-g``` is important here.

## Installation as module.
* ``` npm install countdown-node [-g] ``` will install ``` countdown-node ``` package as node module. Provide ``` -g ``` as optional argument to install it globally.
* ``` countdown-node ``` is also name of the command that you can run from your command line.
* You might want to alias this command as ```countdown```. See [aliasing](https://github.com/samyakbhuta/countdown#aliasing).

## Uninstalling
* ``` npm uninstall countdown-node [-g] ``` to uninstall the module.

## How to use ?

* See usage and provide arguments as described in [specification](https://github.com/samyakbhuta/countdown#specification).

### Issues ?

* See issue [tracker](https://github.com/samyakbhuta/countdown/issues) 

