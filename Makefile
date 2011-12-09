
ERL_TOP := $(CURDIR)/otp
TESTROOT := $(CURDIR)/out

out/doc/index.html: otp/Makefile
	mkdir -p out
	cp -Rf otp/system .
# 	For some reason, this only works manually and if I do
# 	export ERL_TOP again...?
#	cd system/doc; gmake release_docs

otp/Makefile: otp/configure
	cd otp; ./configure

otp/configure: otp/otp_build
	cd otp; ./otp_build autoconf

otp/otp_build:
	git submodule init
	git submodule update

clean:
	cd otp; git clean -fxd
	rm -rf out