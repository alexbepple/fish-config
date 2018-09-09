## Usage

Run `task` to build and rebuild config.


## Dependencies

[go-task/task](https://github.com/go-task/task)


### Fisherman

Why use [Fisherman](https://fisherman.github.io/) for assembling fish config?

* handles transitive dependencies
* provides mechanism for merging, e.g. `fish_user_key_bindings`.

However, `fisher_dependency_count` is pain.
