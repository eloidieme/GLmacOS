## OpenGL C++ macOS Template
By Eloi Dieme

This is a template to quickstart C++ OpenGL development on macOS.

### Features

* Dependencies already installed in a dedicated folder.
* Makefile to build easily.
* VSCode config file to run directly from the IDE during development.

### Getting Started

#### Prerequisites
Ensure you have a C++ compiler (such as clang++) installed on your system to compile the project. You can check your installation by running:
```bash
clang++ --version
```

#### Installation
* Using the green button saying "Use template" on the GitHub page, you can create a repo from this template to start working.
* Build the Project
Use the provided Makefile to compile the project:
```bash
make
```
This command will compile the source files and generate the executable.
You can clean everythin with the command
```bash
make clean
```

#### Running the Program
After building the project, you can run the program using:
```bash
./bin/app
```

### Usage

The example app just displays a dark green-blueish color and checks if everything works with GLFW.
