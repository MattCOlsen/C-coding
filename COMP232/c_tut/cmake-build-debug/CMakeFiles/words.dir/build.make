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
include CMakeFiles/words.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/words.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/words.dir/flags.make

CMakeFiles/words.dir/src/words.c.o: CMakeFiles/words.dir/flags.make
CMakeFiles/words.dir/src/words.c.o: ../src/words.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/words.dir/src/words.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/words.dir/src/words.c.o   -c /home/suspiciousfox/Desktop/COMP232/c_tut/src/words.c

CMakeFiles/words.dir/src/words.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/words.dir/src/words.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/suspiciousfox/Desktop/COMP232/c_tut/src/words.c > CMakeFiles/words.dir/src/words.c.i

CMakeFiles/words.dir/src/words.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/words.dir/src/words.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/suspiciousfox/Desktop/COMP232/c_tut/src/words.c -o CMakeFiles/words.dir/src/words.c.s

# Object files for target words
words_OBJECTS = \
"CMakeFiles/words.dir/src/words.c.o"

# External object files for target words
words_EXTERNAL_OBJECTS =

words: CMakeFiles/words.dir/src/words.c.o
words: CMakeFiles/words.dir/build.make
words: CMakeFiles/words.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable words"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/words.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/words.dir/build: words

.PHONY : CMakeFiles/words.dir/build

CMakeFiles/words.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/words.dir/cmake_clean.cmake
.PHONY : CMakeFiles/words.dir/clean

CMakeFiles/words.dir/depend:
	cd /home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suspiciousfox/Desktop/COMP232/c_tut /home/suspiciousfox/Desktop/COMP232/c_tut /home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug /home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug /home/suspiciousfox/Desktop/COMP232/c_tut/cmake-build-debug/CMakeFiles/words.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/words.dir/depend

