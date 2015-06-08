# We suggest that you not add any rules here. Instead, customize `FALCON-make/makefile`.

FALCON_PREFIX?=$(abspath fc_env)
FALCON_WORKSPACE?=$(abspath FALCON-workspace)
export FALCON_PREFIX
export FALCON_WORKSPACE

install:

# Activate virtualenv environment and delegate the rule to `./FALCON-make/makefile`.
%:
	 . ${FALCON_PREFIX}/bin/activate; ${MAKE} -C ./FALCON-make/ $@

# These can be helpful for setup.
pre:
	git submodule update --init --recursive 
virtualenv:
	mkdir -p ${FALCON_PREFIX}
	virtualenv -p $(shell which python2.7) --no-site-packages  --always-copy ${FALCON_PREFIX}
check:
	. ${FALCON_PREFIX}/bin/activate; which python
