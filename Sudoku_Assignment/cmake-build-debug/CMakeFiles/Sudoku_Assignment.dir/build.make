# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles\Sudoku_Assignment.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\Sudoku_Assignment.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\Sudoku_Assignment.dir\flags.make

CMakeFiles\Sudoku_Assignment.dir\main.cpp.obj: CMakeFiles\Sudoku_Assignment.dir\flags.make
CMakeFiles\Sudoku_Assignment.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Sudoku_Assignment.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1422~1.279\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Sudoku_Assignment.dir\main.cpp.obj /FdCMakeFiles\Sudoku_Assignment.dir\ /FS -c "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\main.cpp"
<<

CMakeFiles\Sudoku_Assignment.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sudoku_Assignment.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1422~1.279\bin\Hostx86\x86\cl.exe > CMakeFiles\Sudoku_Assignment.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\main.cpp"
<<

CMakeFiles\Sudoku_Assignment.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sudoku_Assignment.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1422~1.279\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Sudoku_Assignment.dir\main.cpp.s /c "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\main.cpp"
<<

CMakeFiles\Sudoku_Assignment.dir\file_reader.cpp.obj: CMakeFiles\Sudoku_Assignment.dir\flags.make
CMakeFiles\Sudoku_Assignment.dir\file_reader.cpp.obj: ..\file_reader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Sudoku_Assignment.dir/file_reader.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1422~1.279\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Sudoku_Assignment.dir\file_reader.cpp.obj /FdCMakeFiles\Sudoku_Assignment.dir\ /FS -c "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\file_reader.cpp"
<<

CMakeFiles\Sudoku_Assignment.dir\file_reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sudoku_Assignment.dir/file_reader.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1422~1.279\bin\Hostx86\x86\cl.exe > CMakeFiles\Sudoku_Assignment.dir\file_reader.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\file_reader.cpp"
<<

CMakeFiles\Sudoku_Assignment.dir\file_reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sudoku_Assignment.dir/file_reader.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1422~1.279\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Sudoku_Assignment.dir\file_reader.cpp.s /c "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\file_reader.cpp"
<<

CMakeFiles\Sudoku_Assignment.dir\DLX_solver.cpp.obj: CMakeFiles\Sudoku_Assignment.dir\flags.make
CMakeFiles\Sudoku_Assignment.dir\DLX_solver.cpp.obj: ..\DLX_solver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Sudoku_Assignment.dir/DLX_solver.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1422~1.279\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Sudoku_Assignment.dir\DLX_solver.cpp.obj /FdCMakeFiles\Sudoku_Assignment.dir\ /FS -c "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\DLX_solver.cpp"
<<

CMakeFiles\Sudoku_Assignment.dir\DLX_solver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sudoku_Assignment.dir/DLX_solver.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1422~1.279\bin\Hostx86\x86\cl.exe > CMakeFiles\Sudoku_Assignment.dir\DLX_solver.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\DLX_solver.cpp"
<<

CMakeFiles\Sudoku_Assignment.dir\DLX_solver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sudoku_Assignment.dir/DLX_solver.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1422~1.279\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Sudoku_Assignment.dir\DLX_solver.cpp.s /c "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\DLX_solver.cpp"
<<

# Object files for target Sudoku_Assignment
Sudoku_Assignment_OBJECTS = \
"CMakeFiles\Sudoku_Assignment.dir\main.cpp.obj" \
"CMakeFiles\Sudoku_Assignment.dir\file_reader.cpp.obj" \
"CMakeFiles\Sudoku_Assignment.dir\DLX_solver.cpp.obj"

# External object files for target Sudoku_Assignment
Sudoku_Assignment_EXTERNAL_OBJECTS =

Sudoku_Assignment.exe: CMakeFiles\Sudoku_Assignment.dir\main.cpp.obj
Sudoku_Assignment.exe: CMakeFiles\Sudoku_Assignment.dir\file_reader.cpp.obj
Sudoku_Assignment.exe: CMakeFiles\Sudoku_Assignment.dir\DLX_solver.cpp.obj
Sudoku_Assignment.exe: CMakeFiles\Sudoku_Assignment.dir\build.make
Sudoku_Assignment.exe: CMakeFiles\Sudoku_Assignment.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Sudoku_Assignment.exe"
	"C:\Program Files\JetBrains\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\Sudoku_Assignment.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1422~1.279\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\Sudoku_Assignment.dir\objects1.rsp @<<
 /out:Sudoku_Assignment.exe /implib:Sudoku_Assignment.lib /pdb:"C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\cmake-build-debug\Sudoku_Assignment.pdb" /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\Sudoku_Assignment.dir\build: Sudoku_Assignment.exe

.PHONY : CMakeFiles\Sudoku_Assignment.dir\build

CMakeFiles\Sudoku_Assignment.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Sudoku_Assignment.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Sudoku_Assignment.dir\clean

CMakeFiles\Sudoku_Assignment.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment" "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment" "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\cmake-build-debug" "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\cmake-build-debug" "C:\Users\Owner\Desktop\Mathematical Finance Material\C++\Sudoku_Assignment\cmake-build-debug\CMakeFiles\Sudoku_Assignment.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles\Sudoku_Assignment.dir\depend

