#!/bin/bash
# -e: fail on error
# -v: show commands
# -x: show expanded commands
set -vex

#env | sort
time date  # sanity check, since we use 'time' and 'date' in our scripts

which nim
which gcc
which python

#git submodule update --init
# In Bamboo, we do not want this script to alter submodules,
# since we do that inside Bamboo.

# Note: Travis pulls submodules for us, but not --recursive. But we no longer need that.

make init
source env.sh
#sudo pip install virtualenv # No! Prefer PYTHONUSERBASE.
make config-edit-user
make install-nim-falcon
make -j all
make test
