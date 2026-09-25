TARGET_STATIC = ../bin/client_static
TARGET_DYNAMIC = ../bin/client_dynamic
LIB_STATIC = ../lib/libmyutils.a
LIB_DYNAMIC = ../lib/libmyutils.so
OBJ_DIR = ../obj

SOURCES = mystrfunctions.c myfilefunctions.c
OBJECTS = $(SOURCES:%.c=$(OBJ_DIR)/%.o)

all: $(LIB_STATIC) $(LIB_DYNAMIC) $(TARGET_STATIC) $(TARGET_DYNAMIC)

# Compile object files with -fPIC for shared library support
$(OBJ_DIR)/%.o: %.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -fPIC -c $< -o $@

# Build Static Library
$(LIB_STATIC): $(OBJECTS)
	@mkdir -p ../lib
	ar rcs $@ $^

# Build Dynamic Library
$(LIB_DYNAMIC): $(OBJECTS)
	@mkdir -p ../lib
	$(CC) -shared -o $@ $^

# Link Static Binary
$(TARGET_STATIC): $(OBJ_DIR)/main.o $(LIB_STATIC)
	@mkdir -p ../bin
	$(CC) $(CFLAGS) $(OBJ_DIR)/main.o -L../lib -lmyutils -o $@

# Link Dynamic Binary
$(TARGET_DYNAMIC): $(OBJ_DIR)/main.o $(LIB_DYNAMIC)
	@mkdir -p ../bin
	$(CC) $(CFLAGS) $(OBJ_DIR)/main.o $(LDFLAGS) -o $@

$(OBJ_DIR)/main.o: main.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)/*.o $(TARGET_STATIC) $(TARGET_DYNAMIC) $(LIB_STATIC) $(LIB_DYNAMIC)
