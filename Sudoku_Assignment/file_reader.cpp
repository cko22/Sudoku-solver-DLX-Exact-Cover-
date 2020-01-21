#include "file_reader.hpp"

void readFile(const std::string &x) {
    std::ifstream myFile{x};
    // Error check to make sure file is opened properly.
    if (!myFile.is_open()) {
        std::cout << "Error opening " << x << std::endl;
        exit (1);
    }
    std::cout << x << " file read successful!" << std::endl;

    // Read integers from the file and store them in an array.
    while (myFile >> myArray[numbersRead]){
        ++numbersRead;
    }

    // Check if 81 integers were read.
    if (81 != numbersRead){
        std::cout << "Invalid puzzle!" << std::endl;
        exit(-1);
    }

    // Sort the array into Sudoku format (2D array).
    for (int row{0}; 9 > row; ++row){
        for (int col{0}; 9 > col; ++col){
            puzzle[row][col] = myArray[col + 9*row];
        }
    }
}

void printPuzzle(int (&anySudoku)[9][9]){
    std::cout << "_______________________________" << std::endl;
    for (int row{0}; 9 > row; ++row){
        if (3 == row || 6 == row){
            std::cout <<  "-------------------------------" << std::endl;
        }
        for (int col{0}; 9 > col; ++col){
            std::cout << anySudoku[row][col] << "  ";
            if (2 == col || 5 == col){
                std::cout <<  "|  ";
            }
        }
        std::cout << std::endl;
    }
}

bool checkValidity(int (&anyArray)[81],int (&anyPuzzle)[9][9]) {
    // Check if the puzzle is solvable using the fact it needs to have at least 17 clues.
    int count{0};
    for (int b{0}; 81 > b; ++b) {
        if (0 != anyArray[b]) {
            ++count;
        } else {
            continue;
        }
    }
    if (17 > count) {
        std::cout << "The Sudoku puzzle does not have a unique solution!" << std::endl;
        return false;
    }
    std::cout << "The number of clues given: " << count << std::endl;

    // Print the unsolved puzzle.
    std::cout << "Sudoku Puzzle to be solved: " << std::endl;
    printPuzzle(puzzle);
    std::cout << "...........Solving............." << std::endl;

    return checkRules(anyPuzzle); // Check if the imported puzzle violates the rules.

}

bool checkRules(int (&anyPuzzle)[9][9]){
    // Row, column and nonet check.
    for (int i{0}; 9 > i; ++i){
        for (int j{0}; 9 > j; ++j){
            for (int k = j + 1; 9 > k; ++k){
                //Check non-zero numbers if they the same number in the same row.
                if(0 != anyPuzzle[i][j] && anyPuzzle[i][j] == anyPuzzle[i][k]){
                    std::cout << "Invalid puzzle" << std::endl;
                    return false;
                }
                //Check non-zero numbers if they have the same number in the same column.
                if (0 != anyPuzzle[j][i] && anyPuzzle[j][i] == anyPuzzle[k][i]){
                    std::cout << "Invalid puzzle" << std::endl;
                    return false;
                }
                // Check for each nonet (3x3 grid).
                int x = j % 3 + (i % 3) * 3;
                int y = j / 3 + (i / 3) * 3;
                int x_k = k % 3 + (i % 3) * 3;
                int y_k = k / 3 + (i / 3) * 3;
                if (0 != anyPuzzle[x][y] && anyPuzzle[x][y] == anyPuzzle[x_k][y_k]){
                    std::cout << "Invalid puzzle" << std::endl;
                    return false;
                };
            }
        }
    }
    return true;
}