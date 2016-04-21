# We suggest that you not add any rules here. Instead, customize `FALCON-make/makefile`.

FALCON_PREFIX?=$(abspath fc_env)
FALCON_WORKSPACE?=$(abspath .)
export FALCON_PREFIX
export FALCON_WORKSPACE

install:

# Activate virtualenv environment and delegate the rule to `./FALCON-make/makefile`.
%:
	ln -sf ../../git-sym/git-sym ${FALCON_PREFIX}/bin/git-sym
	. ${FALCON_PREFIX}/bin/activate; ${MAKE} -C ./FALCON-make/ $@

# These can be helpful for setup.
pre: init
init:
	#git submodule update --init --depth=1 virtualenv # We cannot do this and still update. Old releases would break.
	git submodule update --init
virtualenv:
	mkdir -p ${FALCON_PREFIX}
	python2.7 virtualenv/virtualenv.py --no-site-packages  --always-copy ${FALCON_PREFIX}
check:
	. ${FALCON_PREFIX}/bin/activate; which python

.PHONY: pre init virtualenv check
