# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.4.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.4.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build

# Include any dependencies generated for this target.
include CMakeFiles/test-client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test-client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test-client.dir/flags.make

CMakeFiles/test-client.dir/test-server/test-client.c.o: CMakeFiles/test-client.dir/flags.make
CMakeFiles/test-client.dir/test-server/test-client.c.o: ../test-server/test-client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/test-client.dir/test-server/test-client.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-client.dir/test-server/test-client.c.o   -c /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/test-server/test-client.c

CMakeFiles/test-client.dir/test-server/test-client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-client.dir/test-server/test-client.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/test-server/test-client.c > CMakeFiles/test-client.dir/test-server/test-client.c.i

CMakeFiles/test-client.dir/test-server/test-client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-client.dir/test-server/test-client.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/test-server/test-client.c -o CMakeFiles/test-client.dir/test-server/test-client.c.s

CMakeFiles/test-client.dir/test-server/test-client.c.o.requires:

.PHONY : CMakeFiles/test-client.dir/test-server/test-client.c.o.requires

CMakeFiles/test-client.dir/test-server/test-client.c.o.provides: CMakeFiles/test-client.dir/test-server/test-client.c.o.requires
	$(MAKE) -f CMakeFiles/test-client.dir/build.make CMakeFiles/test-client.dir/test-server/test-client.c.o.provides.build
.PHONY : CMakeFiles/test-client.dir/test-server/test-client.c.o.provides

CMakeFiles/test-client.dir/test-server/test-client.c.o.provides.build: CMakeFiles/test-client.dir/test-server/test-client.c.o


# Object files for target test-client
test__client_OBJECTS = \
"CMakeFiles/test-client.dir/test-server/test-client.c.o"

# External object files for target test-client
test__client_EXTERNAL_OBJECTS =

bin/libwebsockets-test-client: CMakeFiles/test-client.dir/test-server/test-client.c.o
bin/libwebsockets-test-client: CMakeFiles/test-client.dir/build.make
bin/libwebsockets-test-client: lib/libwebsockets.a
bin/libwebsockets-test-client: /opt/local/lib/libz.dylib
bin/libwebsockets-test-client: /opt/local/lib/libssl.dylib
bin/libwebsockets-test-client: /opt/local/lib/libcrypto.dylib
bin/libwebsockets-test-client: CMakeFiles/test-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/libwebsockets-test-client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test-client.dir/build: bin/libwebsockets-test-client

.PHONY : CMakeFiles/test-client.dir/build

CMakeFiles/test-client.dir/requires: CMakeFiles/test-client.dir/test-server/test-client.c.o.requires

.PHONY : CMakeFiles/test-client.dir/requires

CMakeFiles/test-client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test-client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test-client.dir/clean

CMakeFiles/test-client.dir/depend:
	cd /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build/CMakeFiles/test-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test-client.dir/depend

