# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/suspiciousfox/CLion/bin/clion-2018.3.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/suspiciousfox/CLion/bin/clion-2018.3.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/suspiciousfox/Desktop/COMP232/c_tut

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/struct.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/struct.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/struct.dir/flags.make

CMakeFiles/struct.dir/src/struct.c.o: CMakeFiles/struct.dir/flags.make
CMakeFiles/struct.dir/src/struct.c.o: ../src/struct.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/struct.dir/src/struct.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/struct.dir/src/struct.c.o   -c /home/suspiciousfox/Desktop/COMP232/c_tut/src/struct.c

CMakeFiles/struct.dir/src/struct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/struct.dir/src/struct.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/suspiciousfox/Desktop/COMP232/c_tut/src/struct.c > CMakeFiles/struct.dir/src/struct.c.i

CMakeFiles/struct.dir/src/struct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/struct.dir/src/struct.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/suspiciousfox/Desktop/COMP232/c_tut/src/struct.c -o CMakeFiles/struct.dir/src/struct.c.s

CMakeFiles/struct.dir/src/person.c.o: CMakeFiles/struct.dir/flags.make
CMakeFiles/struct.dir/src/person.c.o: ../src/person.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/struct.dir/src/person.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/struct.dir/src/person.c.o   -c /home/suspiciousfox/Desktop/COMP232/c_tut/src/person.c

CMakeFiles/struct.dir/src/person.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/struct.dir/src/person.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/suspiciousfox/Desktop/COMP232/c_tut/src/person.c > CMakeFiles/struct.dir/src/person.c.i

CMakeFiles/struct.dir/src/person.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/struct.dir/src/person.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/suspiciousfox/Desktop/COMP232/c_tut/src/person.c -o CMakeFiles/struct.dir/src/person.c.s

# Object files for target struct
struct_OBJECTS = \
"CMakeFiles/struct.dir/src/struct.c.o" \
"CMakeFiles/struct.dir/src/person.c.o"

# External object files for target struct
struct_EXTERNAL_OBJECTS =

struct: CMakeFiles/struct.dir/src/struct.c.o
struct: CMakeFiles/struct.dir/src/person.c.o
struct: CMakeFiles/struct.dir/build.make
struct: CMakeFiles/struct.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable struct"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/struct.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/struct.dir/build: struct

.PHONY : CMakeFiles/struct.dir/build

CMakeFiles/struct.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/struct.dir/cmake_clean.cmake
.PHONY : CMakeFiles/struct.dir/clean

CMakeFiles/struct.dir/depend:
	cd /home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suspiciousfox/Desktop/COMP232/c_tut /home/suspiciousfox/Desktop/COMP232/c_tut /home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug /home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug /home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug/CMakeFiles/struct.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/struct.dir/depend

