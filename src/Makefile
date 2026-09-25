# src/Makefile
TARGET = ../bin/client
OBJ_DIR = ../obj

SOURCES = main.c mystrfunctions.c myfilefunctions.c
OBJECTS = $(SOURCES:%.c=$(OBJ_DIR)/%.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	@mkdir -p ../bin
	$(CC) $(CFLAGS) $^ -o $@

$(OBJ_DIR)/%.o: %.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)/*.o $(TARGET)
