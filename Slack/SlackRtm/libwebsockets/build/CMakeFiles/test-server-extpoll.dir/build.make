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
include CMakeFiles/test-server-extpoll.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test-server-extpoll.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test-server-extpoll.dir/flags.make

CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o: CMakeFiles/test-server-extpoll.dir/flags.make
CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o: ../test-server/test-server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o   -c /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/test-server/test-server.c

CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/test-server/test-server.c > CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.i

CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/test-server/test-server.c -o CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.s

CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o.requires:

.PHONY : CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o.requires

CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o.provides: CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o.requires
	$(MAKE) -f CMakeFiles/test-server-extpoll.dir/build.make CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o.provides.build
.PHONY : CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o.provides

CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o.provides.build: CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o


# Object files for target test-server-extpoll
test__server__extpoll_OBJECTS = \
"CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o"

# External object files for target test-server-extpoll
test__server__extpoll_EXTERNAL_OBJECTS =

bin/libwebsockets-test-server-extpoll: CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o
bin/libwebsockets-test-server-extpoll: CMakeFiles/test-server-extpoll.dir/build.make
bin/libwebsockets-test-server-extpoll: lib/libwebsockets.a
bin/libwebsockets-test-server-extpoll: /opt/local/lib/libz.dylib
bin/libwebsockets-test-server-extpoll: /opt/local/lib/libssl.dylib
bin/libwebsockets-test-server-extpoll: /opt/local/lib/libcrypto.dylib
bin/libwebsockets-test-server-extpoll: CMakeFiles/test-server-extpoll.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/libwebsockets-test-server-extpoll"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-server-extpoll.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test-server-extpoll.dir/build: bin/libwebsockets-test-server-extpoll

.PHONY : CMakeFiles/test-server-extpoll.dir/build

CMakeFiles/test-server-extpoll.dir/requires: CMakeFiles/test-server-extpoll.dir/test-server/test-server.c.o.requires

.PHONY : CMakeFiles/test-server-extpoll.dir/requires

CMakeFiles/test-server-extpoll.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test-server-extpoll.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test-server-extpoll.dir/clean

CMakeFiles/test-server-extpoll.dir/depend:
	cd /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build /Volumes/CONNECT/Projects/TrinityCore/Testing/SlackRtm/libwebsockets/build/CMakeFiles/test-server-extpoll.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test-server-extpoll.dir/depend

