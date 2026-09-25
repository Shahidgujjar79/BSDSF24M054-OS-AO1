CC = gcc
CFLAGS = -Wall -Wextra -Iinclude
LDFLAGS = -L$(PWD)/lib -lmyutils -Wl,-rpath,$(PWD)/lib

PREFIX = /usr/local

export CC CFLAGS LDFLAGS

all:
	@$(MAKE) -C src

clean:
	@$(MAKE) -C src clean

install: all
	@echo "Installing binaries and man pages..."
	install -d $(PREFIX)/bin
	install -d $(PREFIX)/share/man/man3
	install -m 0755 bin/client_dynamic $(PREFIX)/bin/client
	install -m 0644 man/man3/libmyutils.3 $(PREFIX)/share/man/man3/
	mandb > /dev/null 2>&1
