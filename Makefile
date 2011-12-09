
ERL_TOP := $(CURDIR)/otp
TESTROOT := $(CURDIR)/out
PATH += $(ERL_TOP)/bin:

.PHONY: all clean superclean

all: out/doc/index.html

out/doc/index.html: otp/bin/erl
	mkdir -p out
	cp -Rf otp/system .
	cd system/doc; gmake release_docs
	cd otp/lib/erl_docgen/priv; gmake release_docs

otp/bin/erl: otp/Makefile
	cd otp; gmake

otp/Makefile: otp/configure
	cd otp; ./configure

otp/configure: otp/otp_build
	cd otp; ./otp_build autoconf

otp/otp_build:
	git submodule init
	git submodule update

superclean: clean
	git submodule update -f
	cd otp; git clean -fxd

clean:
	rm -rf out
