# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /mnt/e/Coding/school/cmake-3.27.6-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /mnt/e/Coding/school/cmake-3.27.6-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/e/Coding/Desktop-Duckie

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/e/Coding/Desktop-Duckie

# Include any dependencies generated for this target.
include vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/compiler_depend.make

# Include the progress variables for this target.
include vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/progress.make

# Include the compile flags for this target's objects.
include vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/flags.make

vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/simple.c.o: vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/flags.make
vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/simple.c.o: vendor/glfw-3.3.9/examples/simple.c
vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/simple.c.o: vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/e/Coding/Desktop-Duckie/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/simple.c.o"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/simple.c.o -MF CMakeFiles/simple.dir/simple.c.o.d -o CMakeFiles/simple.dir/simple.c.o -c /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples/simple.c

vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/simple.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/simple.dir/simple.c.i"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples/simple.c > CMakeFiles/simple.dir/simple.c.i

vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/simple.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/simple.dir/simple.c.s"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples/simple.c -o CMakeFiles/simple.dir/simple.c.s

vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/__/deps/glad_gl.c.o: vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/flags.make
vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/__/deps/glad_gl.c.o: vendor/glfw-3.3.9/deps/glad_gl.c
vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/__/deps/glad_gl.c.o: vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/e/Coding/Desktop-Duckie/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/__/deps/glad_gl.c.o"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/__/deps/glad_gl.c.o -MF CMakeFiles/simple.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/simple.dir/__/deps/glad_gl.c.o -c /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/deps/glad_gl.c

vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/simple.dir/__/deps/glad_gl.c.i"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/deps/glad_gl.c > CMakeFiles/simple.dir/__/deps/glad_gl.c.i

vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/simple.dir/__/deps/glad_gl.c.s"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/deps/glad_gl.c -o CMakeFiles/simple.dir/__/deps/glad_gl.c.s

# Object files for target simple
simple_OBJECTS = \
"CMakeFiles/simple.dir/simple.c.o" \
"CMakeFiles/simple.dir/__/deps/glad_gl.c.o"

# External object files for target simple
simple_EXTERNAL_OBJECTS =

vendor/glfw-3.3.9/examples/simple: vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/simple.c.o
vendor/glfw-3.3.9/examples/simple: vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/__/deps/glad_gl.c.o
vendor/glfw-3.3.9/examples/simple: vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/build.make
vendor/glfw-3.3.9/examples/simple: vendor/glfw-3.3.9/src/libglfw3.a
vendor/glfw-3.3.9/examples/simple: /usr/lib/x86_64-linux-gnu/libm.so
vendor/glfw-3.3.9/examples/simple: /usr/lib/x86_64-linux-gnu/librt.so
vendor/glfw-3.3.9/examples/simple: /usr/lib/x86_64-linux-gnu/libm.so
vendor/glfw-3.3.9/examples/simple: /usr/lib/x86_64-linux-gnu/libX11.so
vendor/glfw-3.3.9/examples/simple: vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/e/Coding/Desktop-Duckie/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable simple"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/build: vendor/glfw-3.3.9/examples/simple
.PHONY : vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/build

vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/clean:
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples && $(CMAKE_COMMAND) -P CMakeFiles/simple.dir/cmake_clean.cmake
.PHONY : vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/clean

vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/depend:
	cd /mnt/e/Coding/Desktop-Duckie && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/e/Coding/Desktop-Duckie /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples /mnt/e/Coding/Desktop-Duckie /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : vendor/glfw-3.3.9/examples/CMakeFiles/simple.dir/depend
