
## Usage

* No need to run anything when modifying existing files.
* `task build` is needed after adding own config files (in `/boats`).
* `task rebuild` is needed after removing own config files.
* `task rebuild-from-scratch` is recommended after adding/removing dependencies. (`rebuild` does everything that is functionally needed. But when one does a clean install later, one might be surprised by `fishd.*` having a change to Fisherman’s `fisher_dependency_count`. So let’s do this earlier than later.)


## Misc

Taskfile.yml is for https://github.com/go-task/task


### Fisherman

Why use [Fisherman](https://fisherman.github.io/) for assembling fish config?

* handles transitive dependencies
* provides mechanism for assembling

However, `fisher_dependency_count` is pain.


## Backlog

* ! avoid meaningless changes to fisher_dependency_count
    * When exactly do such changes happen?
