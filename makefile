# We suggest that you not add any rules here. Instead, customize `FALCON-make/makefile`.

default:
	@echo 'make init'
	@echo 'source env.sh'
	@echo 'make config-???'
	@echo 'make all'
init:
	cp -f default-env.sh env.sh
config-edit:
	bash ./FALCON-make/config-edit.sh
config-edit-user:
	bash ./FALCON-make/config-edit-user.sh
config-standard:
	bash ./FALCON-make/config-standard.sh

all:
	${MAKE} -C ./FALCON-make/ $@
install:
	${MAKE} -C ./FALCON-make/ $@
test:
	${MAKE} -C ./FALCON-make/ $@

update: # for creating new releases
	git submodule update --remote
	git add .
	log-compares # my own tool

.PHONY: init test
