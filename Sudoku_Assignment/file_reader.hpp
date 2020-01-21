
#ifndef SUDOKU_ASSIGNMENT_FILE_READER_HPP
#define SUDOKU_ASSIGNMENT_FILE_READER_HPP

#include <iostream>
#include <fstream>
#include <string>
#include <array>

extern int myArray[81];
extern int puzzle[9][9];
extern int numbersRead;

// Read Sudoku puzzle from file
void readFile(const std::string &x);

// Print the Sudoku puzzle.
void printPuzzle(int (&anySudoku)[9][9]);

// Check no. of clues given, return false if less than 17.
bool checkValidity(int (&anyArray)[81], int (&anyPuzzle)[9][9]);

// Check Sudoku rules.
bool checkRules(int (&anyPuzzle)[9][9]);

#endif //SUDOKU_ASSIGNMENT_FILE_READER_HPP
