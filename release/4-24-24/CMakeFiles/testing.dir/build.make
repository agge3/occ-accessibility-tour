# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_SOURCE_DIR = /home/agge/projects/sfml/occ-accessibility-tour

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/agge/projects/sfml/occ-accessibility-tour/debug

# Include any dependencies generated for this target.
include CMakeFiles/testing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testing.dir/flags.make

CMakeFiles/testing.dir/src/testing.cpp.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/src/testing.cpp.o: /home/agge/projects/sfml/occ-accessibility-tour/src/testing.cpp
CMakeFiles/testing.dir/src/testing.cpp.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/agge/projects/sfml/occ-accessibility-tour/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testing.dir/src/testing.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/src/testing.cpp.o -MF CMakeFiles/testing.dir/src/testing.cpp.o.d -o CMakeFiles/testing.dir/src/testing.cpp.o -c /home/agge/projects/sfml/occ-accessibility-tour/src/testing.cpp

CMakeFiles/testing.dir/src/testing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testing.dir/src/testing.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/agge/projects/sfml/occ-accessibility-tour/src/testing.cpp > CMakeFiles/testing.dir/src/testing.cpp.i

CMakeFiles/testing.dir/src/testing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testing.dir/src/testing.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/agge/projects/sfml/occ-accessibility-tour/src/testing.cpp -o CMakeFiles/testing.dir/src/testing.cpp.s

CMakeFiles/testing.dir/dep/imgui/imgui.cpp.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/dep/imgui/imgui.cpp.o: /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui.cpp
CMakeFiles/testing.dir/dep/imgui/imgui.cpp.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/agge/projects/sfml/occ-accessibility-tour/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/testing.dir/dep/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/dep/imgui/imgui.cpp.o -MF CMakeFiles/testing.dir/dep/imgui/imgui.cpp.o.d -o CMakeFiles/testing.dir/dep/imgui/imgui.cpp.o -c /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui.cpp

CMakeFiles/testing.dir/dep/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testing.dir/dep/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui.cpp > CMakeFiles/testing.dir/dep/imgui/imgui.cpp.i

CMakeFiles/testing.dir/dep/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testing.dir/dep/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui.cpp -o CMakeFiles/testing.dir/dep/imgui/imgui.cpp.s

CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.o: /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_draw.cpp
CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/agge/projects/sfml/occ-accessibility-tour/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.o -MF CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.o.d -o CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.o -c /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_draw.cpp

CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_draw.cpp > CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.i

CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_draw.cpp -o CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.s

CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.o: /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_demo.cpp
CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/agge/projects/sfml/occ-accessibility-tour/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.o -MF CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.o.d -o CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.o -c /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_demo.cpp

CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_demo.cpp > CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.i

CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_demo.cpp -o CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.s

CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.o: /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_tables.cpp
CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/agge/projects/sfml/occ-accessibility-tour/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.o -MF CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.o.d -o CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.o -c /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_tables.cpp

CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_tables.cpp > CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.i

CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_tables.cpp -o CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.s

CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.o: /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_widgets.cpp
CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/agge/projects/sfml/occ-accessibility-tour/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.o -MF CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.o -c /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_widgets.cpp

CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_widgets.cpp > CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.i

CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui/imgui_widgets.cpp -o CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.s

CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.o: /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui-sfml/imgui-SFML.cpp
CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/agge/projects/sfml/occ-accessibility-tour/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.o -MF CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.o.d -o CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.o -c /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui-sfml/imgui-SFML.cpp

CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui-sfml/imgui-SFML.cpp > CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.i

CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/agge/projects/sfml/occ-accessibility-tour/dep/imgui-sfml/imgui-SFML.cpp -o CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.s

# Object files for target testing
testing_OBJECTS = \
"CMakeFiles/testing.dir/src/testing.cpp.o" \
"CMakeFiles/testing.dir/dep/imgui/imgui.cpp.o" \
"CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.o" \
"CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.o" \
"CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.o" \
"CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.o"

# External object files for target testing
testing_EXTERNAL_OBJECTS =

testing: CMakeFiles/testing.dir/src/testing.cpp.o
testing: CMakeFiles/testing.dir/dep/imgui/imgui.cpp.o
testing: CMakeFiles/testing.dir/dep/imgui/imgui_draw.cpp.o
testing: CMakeFiles/testing.dir/dep/imgui/imgui_demo.cpp.o
testing: CMakeFiles/testing.dir/dep/imgui/imgui_tables.cpp.o
testing: CMakeFiles/testing.dir/dep/imgui/imgui_widgets.cpp.o
testing: CMakeFiles/testing.dir/dep/imgui-sfml/imgui-SFML.cpp.o
testing: CMakeFiles/testing.dir/build.make
testing: /home/agge/projects/sfml/occ-accessibility-tour/dep/linux/SFML-2.6.1/lib/libsfml-graphics-d.so.2.6.1
testing: /home/agge/projects/sfml/occ-accessibility-tour/dep/linux/SFML-2.6.1/lib/libsfml-window-d.so.2.6.1
testing: /home/agge/projects/sfml/occ-accessibility-tour/dep/linux/SFML-2.6.1/lib/libsfml-system-d.so.2.6.1
testing: CMakeFiles/testing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/agge/projects/sfml/occ-accessibility-tour/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable testing"
	/usr/bin/cmake -E copy_directory /home/agge/projects/sfml/occ-accessibility-tour/res/ /home/agge/projects/sfml/occ-accessibility-tour/debug
	/usr/bin/cmake -E copy_directory /home/agge/projects/sfml/occ-accessibility-tour/lib/ /home/agge/projects/sfml/occ-accessibility-tour/debug
	/usr/bin/cmake -E copy_directory /home/agge/projects/sfml/occ-accessibility-tour/scripts/ /home/agge/projects/sfml/occ-accessibility-tour/debug
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testing.dir/build: testing
.PHONY : CMakeFiles/testing.dir/build

CMakeFiles/testing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testing.dir/clean

CMakeFiles/testing.dir/depend:
	cd /home/agge/projects/sfml/occ-accessibility-tour/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/agge/projects/sfml/occ-accessibility-tour /home/agge/projects/sfml/occ-accessibility-tour /home/agge/projects/sfml/occ-accessibility-tour/debug /home/agge/projects/sfml/occ-accessibility-tour/debug /home/agge/projects/sfml/occ-accessibility-tour/debug/CMakeFiles/testing.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/testing.dir/depend

