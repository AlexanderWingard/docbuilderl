

otp/Makefile: otp/configure
	cd otp; ./configure

otp/configure: otp/otp_build
	cd otp; ./otp_build autoconf

otp/otp_build:
	git submodule init
	git submodule update

clean:
	cd otp; git clean -fxd