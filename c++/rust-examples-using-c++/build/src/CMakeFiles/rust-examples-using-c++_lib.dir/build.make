# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build

# Include any dependencies generated for this target.
include src/CMakeFiles/rust-examples-using-c++_lib.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/rust-examples-using-c++_lib.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/rust-examples-using-c++_lib.dir/flags.make

src/CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.o: src/CMakeFiles/rust-examples-using-c++_lib.dir/flags.make
src/CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.o: ../src/chapter1/hello_world.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.o"
	cd /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.o -c /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/src/chapter1/hello_world.cpp

src/CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.i"
	cd /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/src/chapter1/hello_world.cpp > CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.i

src/CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.s"
	cd /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/src/chapter1/hello_world.cpp -o CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.s

src/CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.o: src/CMakeFiles/rust-examples-using-c++_lib.dir/flags.make
src/CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.o"
	cd /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.o -c /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/src/main.cpp

src/CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.i"
	cd /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/src/main.cpp > CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.i

src/CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.s"
	cd /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/src/main.cpp -o CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.s

# Object files for target rust-examples-using-c++_lib
rust__examples__using__c_______lib_OBJECTS = \
"CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.o" \
"CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.o"

# External object files for target rust-examples-using-c++_lib
rust__examples__using__c_______lib_EXTERNAL_OBJECTS =

src/librust-examples-using-c++_lib.a: src/CMakeFiles/rust-examples-using-c++_lib.dir/chapter1/hello_world.cpp.o
src/librust-examples-using-c++_lib.a: src/CMakeFiles/rust-examples-using-c++_lib.dir/main.cpp.o
src/librust-examples-using-c++_lib.a: src/CMakeFiles/rust-examples-using-c++_lib.dir/build.make
src/librust-examples-using-c++_lib.a: src/CMakeFiles/rust-examples-using-c++_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library librust-examples-using-c++_lib.a"
	cd /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src && $(CMAKE_COMMAND) -P CMakeFiles/rust-examples-using-c++_lib.dir/cmake_clean_target.cmake
	cd /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rust-examples-using-c++_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/rust-examples-using-c++_lib.dir/build: src/librust-examples-using-c++_lib.a

.PHONY : src/CMakeFiles/rust-examples-using-c++_lib.dir/build

src/CMakeFiles/rust-examples-using-c++_lib.dir/clean:
	cd /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src && $(CMAKE_COMMAND) -P CMakeFiles/rust-examples-using-c++_lib.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/rust-examples-using-c++_lib.dir/clean

src/CMakeFiles/rust-examples-using-c++_lib.dir/depend:
	cd /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++ /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/src /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src /home/steephen/programming/algorithms-daily/c++/rust-examples-using-c++/build/src/CMakeFiles/rust-examples-using-c++_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/rust-examples-using-c++_lib.dir/depend
