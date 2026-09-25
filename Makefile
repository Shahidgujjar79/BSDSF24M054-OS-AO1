# Top-level Makefile
CC = gcc
CFLAGS = -Wall -Wextra -Iinclude

export CC CFLAGS

all:
	@$(MAKE) -C src

clean:
	@$(MAKE) -C src clean
