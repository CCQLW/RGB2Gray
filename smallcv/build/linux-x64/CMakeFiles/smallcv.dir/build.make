# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/perfxlab_cs/qlw/smallcv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/perfxlab_cs/qlw/smallcv/build/linux-x64

# Include any dependencies generated for this target.
include CMakeFiles/smallcv.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/smallcv.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/smallcv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/smallcv.dir/flags.make

CMakeFiles/smallcv.dir/src/smallcv.cpp.o: CMakeFiles/smallcv.dir/flags.make
CMakeFiles/smallcv.dir/src/smallcv.cpp.o: /home/perfxlab_cs/qlw/smallcv/src/smallcv.cpp
CMakeFiles/smallcv.dir/src/smallcv.cpp.o: CMakeFiles/smallcv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/perfxlab_cs/qlw/smallcv/build/linux-x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/smallcv.dir/src/smallcv.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/smallcv.dir/src/smallcv.cpp.o -MF CMakeFiles/smallcv.dir/src/smallcv.cpp.o.d -o CMakeFiles/smallcv.dir/src/smallcv.cpp.o -c /home/perfxlab_cs/qlw/smallcv/src/smallcv.cpp

CMakeFiles/smallcv.dir/src/smallcv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/smallcv.dir/src/smallcv.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/perfxlab_cs/qlw/smallcv/src/smallcv.cpp > CMakeFiles/smallcv.dir/src/smallcv.cpp.i

CMakeFiles/smallcv.dir/src/smallcv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/smallcv.dir/src/smallcv.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/perfxlab_cs/qlw/smallcv/src/smallcv.cpp -o CMakeFiles/smallcv.dir/src/smallcv.cpp.s

CMakeFiles/smallcv.dir/src/imgproc.cpp.o: CMakeFiles/smallcv.dir/flags.make
CMakeFiles/smallcv.dir/src/imgproc.cpp.o: /home/perfxlab_cs/qlw/smallcv/src/imgproc.cpp
CMakeFiles/smallcv.dir/src/imgproc.cpp.o: CMakeFiles/smallcv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/perfxlab_cs/qlw/smallcv/build/linux-x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/smallcv.dir/src/imgproc.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/smallcv.dir/src/imgproc.cpp.o -MF CMakeFiles/smallcv.dir/src/imgproc.cpp.o.d -o CMakeFiles/smallcv.dir/src/imgproc.cpp.o -c /home/perfxlab_cs/qlw/smallcv/src/imgproc.cpp

CMakeFiles/smallcv.dir/src/imgproc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/smallcv.dir/src/imgproc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/perfxlab_cs/qlw/smallcv/src/imgproc.cpp > CMakeFiles/smallcv.dir/src/imgproc.cpp.i

CMakeFiles/smallcv.dir/src/imgproc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/smallcv.dir/src/imgproc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/perfxlab_cs/qlw/smallcv/src/imgproc.cpp -o CMakeFiles/smallcv.dir/src/imgproc.cpp.s

CMakeFiles/smallcv.dir/src/imdraw.cpp.o: CMakeFiles/smallcv.dir/flags.make
CMakeFiles/smallcv.dir/src/imdraw.cpp.o: /home/perfxlab_cs/qlw/smallcv/src/imdraw.cpp
CMakeFiles/smallcv.dir/src/imdraw.cpp.o: CMakeFiles/smallcv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/perfxlab_cs/qlw/smallcv/build/linux-x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/smallcv.dir/src/imdraw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/smallcv.dir/src/imdraw.cpp.o -MF CMakeFiles/smallcv.dir/src/imdraw.cpp.o.d -o CMakeFiles/smallcv.dir/src/imdraw.cpp.o -c /home/perfxlab_cs/qlw/smallcv/src/imdraw.cpp

CMakeFiles/smallcv.dir/src/imdraw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/smallcv.dir/src/imdraw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/perfxlab_cs/qlw/smallcv/src/imdraw.cpp > CMakeFiles/smallcv.dir/src/imdraw.cpp.i

CMakeFiles/smallcv.dir/src/imdraw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/smallcv.dir/src/imdraw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/perfxlab_cs/qlw/smallcv/src/imdraw.cpp -o CMakeFiles/smallcv.dir/src/imdraw.cpp.s

CMakeFiles/smallcv.dir/src/imshow.cpp.o: CMakeFiles/smallcv.dir/flags.make
CMakeFiles/smallcv.dir/src/imshow.cpp.o: /home/perfxlab_cs/qlw/smallcv/src/imshow.cpp
CMakeFiles/smallcv.dir/src/imshow.cpp.o: CMakeFiles/smallcv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/perfxlab_cs/qlw/smallcv/build/linux-x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/smallcv.dir/src/imshow.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/smallcv.dir/src/imshow.cpp.o -MF CMakeFiles/smallcv.dir/src/imshow.cpp.o.d -o CMakeFiles/smallcv.dir/src/imshow.cpp.o -c /home/perfxlab_cs/qlw/smallcv/src/imshow.cpp

CMakeFiles/smallcv.dir/src/imshow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/smallcv.dir/src/imshow.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/perfxlab_cs/qlw/smallcv/src/imshow.cpp > CMakeFiles/smallcv.dir/src/imshow.cpp.i

CMakeFiles/smallcv.dir/src/imshow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/smallcv.dir/src/imshow.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/perfxlab_cs/qlw/smallcv/src/imshow.cpp -o CMakeFiles/smallcv.dir/src/imshow.cpp.s

CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.o: CMakeFiles/smallcv.dir/flags.make
CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.o: /home/perfxlab_cs/qlw/smallcv/deps/imshow/glad/glad.c
CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.o: CMakeFiles/smallcv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/perfxlab_cs/qlw/smallcv/build/linux-x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.o -MF CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.o.d -o CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.o -c /home/perfxlab_cs/qlw/smallcv/deps/imshow/glad/glad.c

CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/perfxlab_cs/qlw/smallcv/deps/imshow/glad/glad.c > CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.i

CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/perfxlab_cs/qlw/smallcv/deps/imshow/glad/glad.c -o CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.s

# Object files for target smallcv
smallcv_OBJECTS = \
"CMakeFiles/smallcv.dir/src/smallcv.cpp.o" \
"CMakeFiles/smallcv.dir/src/imgproc.cpp.o" \
"CMakeFiles/smallcv.dir/src/imdraw.cpp.o" \
"CMakeFiles/smallcv.dir/src/imshow.cpp.o" \
"CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.o"

# External object files for target smallcv
smallcv_EXTERNAL_OBJECTS =

libsmallcv_d.a: CMakeFiles/smallcv.dir/src/smallcv.cpp.o
libsmallcv_d.a: CMakeFiles/smallcv.dir/src/imgproc.cpp.o
libsmallcv_d.a: CMakeFiles/smallcv.dir/src/imdraw.cpp.o
libsmallcv_d.a: CMakeFiles/smallcv.dir/src/imshow.cpp.o
libsmallcv_d.a: CMakeFiles/smallcv.dir/deps/imshow/glad/glad.c.o
libsmallcv_d.a: CMakeFiles/smallcv.dir/build.make
libsmallcv_d.a: CMakeFiles/smallcv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/perfxlab_cs/qlw/smallcv/build/linux-x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libsmallcv_d.a"
	$(CMAKE_COMMAND) -P CMakeFiles/smallcv.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/smallcv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/smallcv.dir/build: libsmallcv_d.a
.PHONY : CMakeFiles/smallcv.dir/build

CMakeFiles/smallcv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/smallcv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/smallcv.dir/clean

CMakeFiles/smallcv.dir/depend:
	cd /home/perfxlab_cs/qlw/smallcv/build/linux-x64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/perfxlab_cs/qlw/smallcv /home/perfxlab_cs/qlw/smallcv /home/perfxlab_cs/qlw/smallcv/build/linux-x64 /home/perfxlab_cs/qlw/smallcv/build/linux-x64 /home/perfxlab_cs/qlw/smallcv/build/linux-x64/CMakeFiles/smallcv.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/smallcv.dir/depend
