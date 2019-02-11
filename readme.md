## Usage

Run `just` to build and rebuild config.


## Build dependencies

[just](https://github.com/casey/just)


## Fisher

Why use [Fisher](https://github.com/jorgebucaran/fisher) for assembling fish config?

* makes it simple to modularize config
* handles transitive dependencies

Fisher is installed permanently instead of bootstrapping
in order to allow for offline rebuilding.
