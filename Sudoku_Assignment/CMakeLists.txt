cmake_minimum_required(VERSION 3.15)
project(Sudoku_Assignment)

set(CMAKE_CXX_STANDARD 14)

add_executable(Sudoku_Assignment main.cpp file_reader.cpp file_reader.hpp DLX_solver.cpp DLX_solver.hpp)