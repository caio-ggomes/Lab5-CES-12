# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/caio/ITA/5_semestre/CES-12/Labs/Lab5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/caio/ITA/5_semestre/CES-12/Labs/Lab5/build

# Include any dependencies generated for this target.
include CMakeFiles/libLabTsp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/libLabTsp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libLabTsp.dir/flags.make

CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.o: CMakeFiles/libLabTsp.dir/flags.make
CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.o: ../lib/TspReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caio/ITA/5_semestre/CES-12/Labs/Lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.o -c /home/caio/ITA/5_semestre/CES-12/Labs/Lab5/lib/TspReader.cpp

CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caio/ITA/5_semestre/CES-12/Labs/Lab5/lib/TspReader.cpp > CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.i

CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caio/ITA/5_semestre/CES-12/Labs/Lab5/lib/TspReader.cpp -o CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.s

# Object files for target libLabTsp
libLabTsp_OBJECTS = \
"CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.o"

# External object files for target libLabTsp
libLabTsp_EXTERNAL_OBJECTS =

liblibLabTsp.a: CMakeFiles/libLabTsp.dir/lib/TspReader.cpp.o
liblibLabTsp.a: CMakeFiles/libLabTsp.dir/build.make
liblibLabTsp.a: CMakeFiles/libLabTsp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/caio/ITA/5_semestre/CES-12/Labs/Lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibLabTsp.a"
	$(CMAKE_COMMAND) -P CMakeFiles/libLabTsp.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libLabTsp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libLabTsp.dir/build: liblibLabTsp.a

.PHONY : CMakeFiles/libLabTsp.dir/build

CMakeFiles/libLabTsp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libLabTsp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libLabTsp.dir/clean

CMakeFiles/libLabTsp.dir/depend:
	cd /home/caio/ITA/5_semestre/CES-12/Labs/Lab5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caio/ITA/5_semestre/CES-12/Labs/Lab5 /home/caio/ITA/5_semestre/CES-12/Labs/Lab5 /home/caio/ITA/5_semestre/CES-12/Labs/Lab5/build /home/caio/ITA/5_semestre/CES-12/Labs/Lab5/build /home/caio/ITA/5_semestre/CES-12/Labs/Lab5/build/CMakeFiles/libLabTsp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libLabTsp.dir/depend

