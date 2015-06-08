# FALCON-integrate
A place to coordinate FALCON builds and tests.

The git-submodules here define a consistent set of revisions. You may use any system you like for building, testing, and integration, but we also provide some submodules which can help with that.

## submodules
In case you are unfamiliar with [**git-submodules**](http://www.git-scm.com/book/en/v2/Git-Tools-Submodules), they are quite easy to use from the command-line:
```sh
git submodule update --init
```

## makefile
We have some **gnu-make** rules to get you started:
```
make init
make virtualenv
make check
make -j install
make test
```

If you have a problem, you might need to set up **virtualenv** yourself. For more details, see the [wiki](https://github.com/PacificBiosciences/FALCON-integrate/wiki).
