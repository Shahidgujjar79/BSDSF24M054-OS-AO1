CC = gcc
CFLAGS = -Wall -Wextra -Iinclude
# -Wl,-rpath embeds the runtime library path directly into the executable
LDFLAGS = -L$(PWD)/lib -lmyutils -Wl,-rpath,$(PWD)/lib

export CC CFLAGS LDFLAGS

all:
	@$(MAKE) -C src

clean:
	@$(MAKE) -C src clean
