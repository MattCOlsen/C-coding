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
CMAKE_SOURCE_DIR = /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/flex_t1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/flex_t1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/flex_t1.dir/flags.make

parser.c: ../src/dummy.y
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[BISON][MyParser] Building parser with bison 3.0.4"
	cd /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7 && /usr/bin/bison -d -o /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/parser.c src/dummy.y

parser.h: parser.c
	@$(CMAKE_COMMAND) -E touch_nocreate parser.h

lexer.c: ../src/flex_t1.l
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[FLEX][MyScanner] Building scanner with flex 2.6.4"
	cd /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7 && /usr/bin/flex -o/home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/lexer.c src/flex_t1.l

CMakeFiles/flex_t1.dir/src/flex_t1.c.o: CMakeFiles/flex_t1.dir/flags.make
CMakeFiles/flex_t1.dir/src/flex_t1.c.o: ../src/flex_t1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/flex_t1.dir/src/flex_t1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/flex_t1.dir/src/flex_t1.c.o   -c /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/src/flex_t1.c

CMakeFiles/flex_t1.dir/src/flex_t1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/flex_t1.dir/src/flex_t1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/src/flex_t1.c > CMakeFiles/flex_t1.dir/src/flex_t1.c.i

CMakeFiles/flex_t1.dir/src/flex_t1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/flex_t1.dir/src/flex_t1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/src/flex_t1.c -o CMakeFiles/flex_t1.dir/src/flex_t1.c.s

CMakeFiles/flex_t1.dir/parser.c.o: CMakeFiles/flex_t1.dir/flags.make
CMakeFiles/flex_t1.dir/parser.c.o: parser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/flex_t1.dir/parser.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/flex_t1.dir/parser.c.o   -c /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/parser.c

CMakeFiles/flex_t1.dir/parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/flex_t1.dir/parser.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/parser.c > CMakeFiles/flex_t1.dir/parser.c.i

CMakeFiles/flex_t1.dir/parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/flex_t1.dir/parser.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/parser.c -o CMakeFiles/flex_t1.dir/parser.c.s

CMakeFiles/flex_t1.dir/lexer.c.o: CMakeFiles/flex_t1.dir/flags.make
CMakeFiles/flex_t1.dir/lexer.c.o: lexer.c
CMakeFiles/flex_t1.dir/lexer.c.o: parser.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/flex_t1.dir/lexer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/flex_t1.dir/lexer.c.o   -c /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/lexer.c

CMakeFiles/flex_t1.dir/lexer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/flex_t1.dir/lexer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/lexer.c > CMakeFiles/flex_t1.dir/lexer.c.i

CMakeFiles/flex_t1.dir/lexer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/flex_t1.dir/lexer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/lexer.c -o CMakeFiles/flex_t1.dir/lexer.c.s

# Object files for target flex_t1
flex_t1_OBJECTS = \
"CMakeFiles/flex_t1.dir/src/flex_t1.c.o" \
"CMakeFiles/flex_t1.dir/parser.c.o" \
"CMakeFiles/flex_t1.dir/lexer.c.o"

# External object files for target flex_t1
flex_t1_EXTERNAL_OBJECTS =

flex_t1: CMakeFiles/flex_t1.dir/src/flex_t1.c.o
flex_t1: CMakeFiles/flex_t1.dir/parser.c.o
flex_t1: CMakeFiles/flex_t1.dir/lexer.c.o
flex_t1: CMakeFiles/flex_t1.dir/build.make
flex_t1: CMakeFiles/flex_t1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable flex_t1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/flex_t1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/flex_t1.dir/build: flex_t1

.PHONY : CMakeFiles/flex_t1.dir/build

CMakeFiles/flex_t1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/flex_t1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/flex_t1.dir/clean

CMakeFiles/flex_t1.dir/depend: parser.c
CMakeFiles/flex_t1.dir/depend: parser.h
CMakeFiles/flex_t1.dir/depend: lexer.c
	cd /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7 /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7 /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug /home/suspiciousfox/Desktop/COMP232/MatthewOlsenLab7/cmake-build-debug/CMakeFiles/flex_t1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/flex_t1.dir/depend

