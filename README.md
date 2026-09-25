# Core C Utilities Library (libmyutils)

## Student Profile
* **Student Name:** MUHAMMAD SHAHID
* **Roll Number:** bsdsf24m054
* **Course:** Operating Systems (Programming Assignment – 01)
* **Instructor:** Dr. Muhammad Arif Butt

---

## Project Overview
This project implements a general-purpose modular utility library named `libmyutils`. The library consists of two main software modules:
1. **String Functions:** Custom implementations for string handling (`mystrlen`, `mystrcpy`, `mystrncpy`, `mystrcat`).
2. **File Functions:** Automated text processing metrics (`wordCount` and `mygrep` pattern matching).

The project demonstrates modular C programming, build automation using recursive compilation with a master `Makefile`, the application of **Static (`.a`)** versus **Dynamic (`.so`)** linking, standard Linux system documentation layout, and granular Git release tagging workflows.

---

## Project Structure
```text
ROLL_NO-OS-A01/
├── bin/          # Final compiled executable targets (client_static, client_dynamic)
├── include/      # Header interface definitions (*.h)
├── lib/          # Archive repositories (libmyutils.a, libmyutils.so)
├── man/          # Linux system manual layout sections (man3/libmyutils.3)
├── obj/          # Ephemeral compilation intermediate object files (*.o)
├── src/          # Implementation engine source files (*.c, local Makefile)
├── Makefile      # Master top-level build controller configuration
└── REPORT.md     # Comprehensive binary design and performance analysis report
```

---

## Compilation and Installation Instructions

### 1. Build Requirements
Ensure your development environment has standard GNU compilation toolchains configured:
```bash
sudo apt update && sudo apt install build-essential git groff
```

### 2. Building the Project
To compile both the static and dynamic libraries alongside their respective driver testing binaries, execute the master Makefile command from the project root directory:
```bash
make clean && make
```

### 3. Execution Protocols

#### Executing the Statically Linked Client:
```bash
./bin/client_static
```

#### Executing the Dynamically Linked Client:
*(Note: The build utilizes integrated `-Wl,-rpath` configurations, meaning the executable automatically maps library routes at initialization without requiring manual environment exports).*
```bash
./bin/client_dynamic
```

### 4. Installing to the System
To install the final optimized dynamic binary and system manual pages globally across your environment paths:
```bash
sudo make install
```
Once installed, the program can be invoked globally from any directory block by running:
```bash
client
```

### 5. Accessing System Documentation
Verify your global documentation integration using the standard Linux manual viewer utility:
```bash
man libmyutils
```

---

## Incremental Feature Roadmap
* **Feature-1:** Project Scaffolding and Remote Workspace Architecture.
* **Feature-2:** Multi-file Application Synthesis managed via Make Utility.
* **Feature-3:** Intermediary Static Library Packaging (`.a`) via Archiver protocols.
* **Feature-4:** Position-Independent Shared Object (`.so`) Engineering.
* **Feature-5:** Linux System Manual Deployment and Global Target Path Mapping.
