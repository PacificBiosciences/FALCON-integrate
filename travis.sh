#!/bin/bash
# -e: fail on error
# -v: show commands
# -x: show expanded commands
set -vex

#env | sort
#sudo pip install virtualenv
time date  # sanity check, since we use 'time' and 'date' in our scripts
make init # Travis pulls submodules for us, but not --recursive
make virtualenv
make check
make install -j
# make test  # not on this branch
