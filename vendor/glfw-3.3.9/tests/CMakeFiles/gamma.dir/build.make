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
include vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/compiler_depend.make

# Include the progress variables for this target.
include vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/progress.make

# Include the compile flags for this target's objects.
include vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/flags.make

vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/gamma.c.o: vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/flags.make
vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/gamma.c.o: vendor/glfw-3.3.9/tests/gamma.c
vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/gamma.c.o: vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/e/Coding/Desktop-Duckie/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/gamma.c.o"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/gamma.c.o -MF CMakeFiles/gamma.dir/gamma.c.o.d -o CMakeFiles/gamma.dir/gamma.c.o -c /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests/gamma.c

vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/gamma.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/gamma.dir/gamma.c.i"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests/gamma.c > CMakeFiles/gamma.dir/gamma.c.i

vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/gamma.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/gamma.dir/gamma.c.s"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests/gamma.c -o CMakeFiles/gamma.dir/gamma.c.s

vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.o: vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/flags.make
vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.o: vendor/glfw-3.3.9/deps/glad_gl.c
vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.o: vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/e/Coding/Desktop-Duckie/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.o"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.o -MF CMakeFiles/gamma.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/gamma.dir/__/deps/glad_gl.c.o -c /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/deps/glad_gl.c

vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/gamma.dir/__/deps/glad_gl.c.i"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/deps/glad_gl.c > CMakeFiles/gamma.dir/__/deps/glad_gl.c.i

vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/gamma.dir/__/deps/glad_gl.c.s"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/deps/glad_gl.c -o CMakeFiles/gamma.dir/__/deps/glad_gl.c.s

# Object files for target gamma
gamma_OBJECTS = \
"CMakeFiles/gamma.dir/gamma.c.o" \
"CMakeFiles/gamma.dir/__/deps/glad_gl.c.o"

# External object files for target gamma
gamma_EXTERNAL_OBJECTS =

vendor/glfw-3.3.9/tests/gamma: vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/gamma.c.o
vendor/glfw-3.3.9/tests/gamma: vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.o
vendor/glfw-3.3.9/tests/gamma: vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/build.make
vendor/glfw-3.3.9/tests/gamma: vendor/glfw-3.3.9/src/libglfw3.a
vendor/glfw-3.3.9/tests/gamma: /usr/lib/x86_64-linux-gnu/libm.so
vendor/glfw-3.3.9/tests/gamma: /usr/lib/x86_64-linux-gnu/librt.so
vendor/glfw-3.3.9/tests/gamma: /usr/lib/x86_64-linux-gnu/libm.so
vendor/glfw-3.3.9/tests/gamma: /usr/lib/x86_64-linux-gnu/libX11.so
vendor/glfw-3.3.9/tests/gamma: vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/e/Coding/Desktop-Duckie/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable gamma"
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gamma.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/build: vendor/glfw-3.3.9/tests/gamma
.PHONY : vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/build

vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/clean:
	cd /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests && $(CMAKE_COMMAND) -P CMakeFiles/gamma.dir/cmake_clean.cmake
.PHONY : vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/clean

vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/depend:
	cd /mnt/e/Coding/Desktop-Duckie && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/e/Coding/Desktop-Duckie /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests /mnt/e/Coding/Desktop-Duckie /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests /mnt/e/Coding/Desktop-Duckie/vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : vendor/glfw-3.3.9/tests/CMakeFiles/gamma.dir/depend

