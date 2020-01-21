#include <iostream>
#include <chrono>
#include "file_reader.hpp"
#include "DLX_solver.hpp"


int myArray[81] = {0};
int puzzle[9][9] = {{0}};
int numbersRead{0};
int matrix[729][324] = {{0}};
bool solved = false;


int main(){
    // Read sudoku_puzzle.txt file
    readFile("sudoku_puzzle.txt");

    // If puzzle valid, solve the puzzle.
    if (checkValidity(myArray, puzzle)){
        auto start_time = std::chrono::high_resolution_clock::now();

        // Solve the Sudoku puzzle.
        solveSudoku(puzzle);

        auto end_time = std::chrono::high_resolution_clock::now();
        auto time = end_time - start_time;
        std::cout << "DLX solver took " <<
                  time/std::chrono::milliseconds(1) << "ms to run.\n";
    }


    return 0;
}