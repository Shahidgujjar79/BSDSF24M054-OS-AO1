# Assignment 01 Analysis Report
**Student Name:** MUHAMMAD SHAHID  
**Roll Number:** bsdsf24m054  

---

## Part 2: Multi-file Project using Make Utility
### 1. The Linking Rule \$(TARGET): \$(OBJECTS)
* **Behavior:** Compiles and directly links local object files (`main.o`, `mystrfunctions.o`, `myfilefunctions.o`) together into a single executable.
* **Difference:** Linking against a library uses path flags (`-L`) and name binders (`-l`) to find functions inside pre-compiled archives rather than raw individual object blocks.

### 2. Git Tags & Utility
* **What is a Git Tag:** A fixed marker pointing to a specific checkpoint commit to track release numbers (e.g., `v0.1.1`).
* **Difference:** A simple tag is just a pointer; an annotated tag contains the author's name, email, date, and a custom log message.

### 3. Purpose of GitHub Releases
* **Purpose:** It provides a public release interface grouping structural updates alongside stable standalone executable downloads so clients do not have to recompile code from scratch.

---

## Part 3: Creating and Using Static Libraries
### 1. Makefile Modifications
* **Differences:** Part 2 compiled all `.c` targets directly into the client executable. Part 3 uses the `ar rcs` tool to pack the utility object files into a single static library file (`libmyutils.a`) inside the `lib/` directory, and links the program against it.

### 2. The `ar` Utility and `ranlib`
* **ar command:** Packs multiple independent object modules into a `.a` archive file.
* **ranlib command:** Generates an index map inside the archive for quicker symbol lookups. Modern `ar` with `rcs` flags handles this automatically.

### 3. Binary Symbol Behavior with `nm`
* **Result:** Running `nm` shows that the symbols are compiled right inside the executable text segment. This proves that static linking copies the library code chunks directly into the final program binary.

---

## Part 4: Creating and Using Dynamic Libraries
### 1. Position-Independent Code (-fPIC)
* **Definition:** Compiles code using relative address lookups rather than absolute memory offsets.
* **Necessity:** Essential for shared libraries (`.so`) so multiple processes can map the library anywhere in system memory without memory spatial collisions.

### 2. Executable Storage Size Analysis
* **Result:** `client_static` is much larger than `client_dynamic`.
* **Reason:** Static copies the library payload data straight into the executable block; dynamic linking keeps the binary small by loading references at runtime.

### 3. The `LD_LIBRARY_PATH` Variable
* **Definition:** An environment variable directing the operating system to check custom folders for shared libraries before checking default roots.
* **Loader Responsibility:** It dictates how the dynamic loader searches, finds, and binds dynamic object reference trees at runtime execution.

---

## Part 5: Creating and Accessing Man Pages
* **System Integration:** Successfully created groff documentation files within standard manual sectors (`man/man3/libmyutils.3`). 
* **Install Routine:** Configured automated setup protocols allowing system administrators to cleanly index shared code resources and manuals across globally mapped server environments (`/usr/local/bin` and `/usr/local/share/man/man3`).
