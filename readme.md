## Usage

Run `task` to build and rebuild config.


## Dependencies

[go-task/task](https://github.com/go-task/task)


## Fisher

Why use [Fisher](https://github.com/jorgebucaran/fisher) for assembling fish config?

* makes it simple to modularize config
* handles transitive dependencies

Fisher is installed permanently instead of bootstrapping
in order to allow for offline rebuilding.
