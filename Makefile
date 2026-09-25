CC = gcc
CFLAGS = -Wall -Wextra -Iinclude
# Using $(PWD) ensures the compiler always finds the correct lib directory path
LDFLAGS = -L$(PWD)/lib -lmyutils

export CC CFLAGS LDFLAGS

all:
	@$(MAKE) -C src

clean:
	@$(MAKE) -C src clean
