#!/bin/bash
# -e: fail on error
# -v: show commands
# -x: show expanded commands
set -vex

#env | sort
#sudo pip install virtualenv
time date  # sanity check, since we use 'time' and 'date' in our scripts
make init # Travis pulls submodules for us, but not --recursive
source env.sh
make config-edit-user
make -j all
make test
