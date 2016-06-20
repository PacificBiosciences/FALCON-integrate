# FALCON-integrate
This is a place to coordinate FALCON builds and tests.

The git-submodules here define a consistent set of revisions.

You may use any system you like for building, testing, and integration,
but we also provide some submodules which can help with that.

## submodules
In case you are unfamiliar with [**git-submodules**](http://www.git-scm.com/book/en/v2/Git-Tools-Submodules), they are quite easy to use from the command-line:
```sh
git submodule update --init
```
If that fails, you can update your **git**, or try this:
```sh
git submodule init
git submodule update
```
which is *almost* the same thing.

## Set-up
You have a few choices:

1. PYTHONUSERBASE
2. virtualenv
3. Standard Python installation

For more details, see the [wiki](https://github.com/PacificBiosciences/FALCON-integrate/wiki).
