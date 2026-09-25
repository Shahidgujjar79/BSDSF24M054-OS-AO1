TARGET = ../bin/client_static
LIB = ../lib/libmyutils.a
OBJ_DIR = ../obj

SOURCES = mystrfunctions.c myfilefunctions.c
OBJECTS = $(SOURCES:%.c=$(OBJ_DIR)/%.o)

all: $(LIB) $(TARGET)

# Step A: Compile source files into object files
$(OBJ_DIR)/%.o: %.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Step B: Create the static library using ar
$(LIB): $(OBJECTS)
	@mkdir -p ../lib
	ar rcs $@ $^

# Step C: Link the driver program against the static library
$(TARGET): $(OBJ_DIR)/main.o $(LIB)
	@mkdir -p ../bin
	$(CC) $(CFLAGS) $(OBJ_DIR)/main.o $(LDFLAGS) -o $@

$(OBJ_DIR)/main.o: main.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)/*.o $(TARGET) $(LIB)
