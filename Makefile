# Makefile
#
##
PRG = ip-read
BIN = $(PRG).pl
DIR = lib


.PHONY: all
all: test

check: $(BIN)
	@for PRG in $(BIN) ; do perl -c $$PRG ; done
	@podchecker $(BIN)

test: tidy
	@prove -l

verbose:
	@prove -lv

tidy:
	@tidyall -a --quiet
