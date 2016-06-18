# We suggest that you not add any rules here. Instead, customize `FALCON-make/makefile`.

PYTHONUSERBASE?=$(abspath fc_env)
FALCON_WORKSPACE?=$(abspath .)
PATH:=${PYTHONUSERBASE}/bin:${PATH}
export PYTHONUSERBASE
export FALCON_WORKSPACE
export PATH

install:

%:
	${MAKE} -C ./FALCON-make/ $@

# These can be helpful for setup.
init:
	git submodule update --init

.PHONY: init
