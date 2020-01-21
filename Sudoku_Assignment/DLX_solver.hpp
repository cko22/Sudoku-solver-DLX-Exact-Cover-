#ifndef SUDOKU_ASSIGNMENT_DLX_SOLVER_HPP
#define SUDOKU_ASSIGNMENT_DLX_SOLVER_HPP
#include <ctime>

extern bool solved;
extern int matrix[729][324];

struct Node {
    // Use pointers for linked-list.
    Node *up;
    Node *down;
    Node *left;
    Node *right;
    Node *head;

    int nodeCount{0};
    int elementID[3];
};



// Function for covering columns.
void cover(Node* col);

// Function for uncovering columns.
void uncover(Node* col);

// Algorithm X to solve exact cover problem.
void algoX(int n);

// Represent the 4 constraints with a 729x324 binary matrix.
void binaryMatrix(int (&anyMatrix)[729][324]);

// Build a doubly-linked circular list with the binary matrix.
void linkedList(int (&anyMatrix)[729][324]);

// Cover numbers that are already present in the puzzle.
void coverNumbers(int (&anyPuzzle)[9][9]);

// Convert exact cover solution to Sudoku form.
void exactCoverToSudoku(int (&anySudoku)[9][9]);

void solveSudoku(int (&anySudoku)[9][9]);

#endif //SUDOKU_ASSIGNMENT_DLX_SOLVER_HPP
