#include "DLX_solver.hpp"
#include "file_reader.hpp"

Node Header;
Node* headerNode = &Header;
Node* solutions[81];
Node* originals[81];


void cover(Node* col) {
    struct Node *node, *rightNode;

    /* Remove link between column header and its neighbours
       using the following operations */
    col->left->right = col->right;
    col->right->left = col->left;

    /* Move down the column and remove each row by moving
       across right. */
    for (node = col->down; node != col; node = node->down) {
        for (rightNode = node->right; rightNode != node; rightNode = rightNode->right) {

            rightNode->down->up = rightNode->up;
            rightNode->up->down = rightNode->down;

            /* After removing link, decrease the node count
             in column header. */
            --rightNode->head->nodeCount;
        }
    }
}

void uncover(Node* col) {
    Node *node, *leftN;

    /* Move down the column and re-link each row by moving
       across left. */
    for (node = col->up; node != col; node = node->up) {
        for (leftN = node->left; leftN != node; leftN = leftN->left) {

            leftN->down->up = leftN;
            leftN->up->down = leftN;

            /* After linking, increase the node count
             in column header. */
            ++leftN->head->nodeCount;
        }
    }
    /* Re-establish link between column header and its neighbours
       using the following operations */
    col->left->right = col;
    col->right->left = col;
}

void algoX(int n) {
    Node *rowN, *rightN, *leftN;

    /* If right of node equals current node,
       indicates no column remaining, solution is found.*/
    if (headerNode == headerNode->right) {
        int zeroMatrix[9][9] = {{0}};
        exactCoverToSudoku(zeroMatrix);
        // Print solution
        std::cout << "------------SOLVED-------------" << std::endl;
        printPuzzle(zeroMatrix);
        solved = true;
        return;
    }else {
        /* Choose the column of the least
           no. of 1s. (deterministically) */
        Node *column = headerNode->right;
        for (rowN = column->right; rowN != headerNode; rowN = rowN->right) {
            if (rowN->nodeCount < column->nodeCount) {
                column = rowN;
            }
        }

        cover(column); // cover chosen column.

        for (rowN = column->down; rowN != column; rowN = rowN->down) {
            solutions[n] = rowN;
            for (rightN = rowN->right; rightN != rowN; rightN = rightN->right) {
                cover(rightN->head);
            }
            // Recursive call, proceed to level n+1.
            algoX(n + 1);

            /* If no possible solution, backtrack to previous level,
               and delete the row from solution */
            rowN = solutions[n];
            solutions[n] = nullptr;

            column = rowN->head;
            for (leftN = rowN->left; leftN != rowN; leftN = leftN->left) {
                uncover(leftN->head);
            }
        }
        uncover(column);
    }
}

void binaryMatrix(int (&anyMatrix)[729][324]) {
    //Constraint 1: Only one number in a cell.
    int a{0};
    int counter{0};
    for (int i{0}; 729>i; ++i) {
        anyMatrix[i][a] = 1;
        ++counter;
        if (counter >= 9) {
            ++a;
            counter = 0;
        }
    }

    //Constraint 2: Each number can only appear once in a row.
    int b{0};
    counter = 1;
    for (int j{1*81}; 2*81>j; ++j) {
        for (int i=b; counter*81> i; i+=9)
            anyMatrix[i][j] = 1;

        if (0 == (j+1)%9) {
            b = counter*81;
            ++counter;
        }else {
            ++b;
        }
    }

    //Constraint 3: Each number can only appear once in a column.
    int j{2*81};
    for (int i{0}; 729>i; ++i)
    {
        anyMatrix[i][j] = 1;
        ++j;
        if (3*81 <= j) {
            j = 2*81;
        }
    }

    //Constraint 4: Each number can only appear once in any 3x3 regions.
    int x{0};
    for (int j{3*81}; 324>j; ++j) {
        for (int l{0}; 3>l; ++l) {
            for (int k{0}; 3>k; ++k) {
                anyMatrix[x + l*9 + k*81][j] = 1;
            }
        }

        int k = j+1-3*81;

        if (0 == k % (int)(3*9) ){
            x += (3-1)*81 + (3-1)*9+1;
        }else if (0 == k%9){
            x += 9*(3-1) + 1;
        }else{
            ++x;
        }
    }
}

void linkedList(int (&anyMatrix)[729][324]) {
    Node* header = new Node;
    header->up = header;
    header->down = header;
    header->left = header;
    header->right = header;
    header->nodeCount = -1;
    header->head = header;
    Node* arr = header;

    //Create all column nodes
    for (int i{0}; 324>i; ++i) {
        Node* newNode = new Node;
        newNode->nodeCount = 0;
        newNode->up = newNode;
        newNode->down = newNode;
        newNode->head = newNode;
        newNode->right = header;
        newNode->left = arr;
        arr->right = newNode;
        arr = newNode;
    }

    int ID[3] = {0,1,1};
    //Add a node for each 1 in the binary matrix and update column nodes accordingly
    for (int i{0}; 729>i; ++i) {
        Node* top = header->right;
        Node* prev = nullptr;

        if (0 != i && 0 == i%81) {
            ID[0] -= 9-1;
            ++ID[1];
            ID[2] -= 9-1;
        }
        else if (0 != i && 0 == i%9) {
            ID[0] -= 9-1;
            ++ID[2];
        }
        else {
            ++ID[0];
        }

        for (int j{0}; 324>j; ++j, top = top->right) {
            if (anyMatrix[i][j]) {
                Node* newNode = new Node;
                newNode->elementID[0] = ID[0];
                newNode->elementID[1] = ID[1];
                newNode->elementID[2] = ID[2];
                if (prev == nullptr) {
                    prev = newNode;
                    prev->right = newNode;
                }
                newNode->left = prev;
                newNode->right = prev->right;
                newNode->right->left = newNode;
                prev->right = newNode;
                newNode->head = top;
                newNode->down = top;
                newNode->up = top->up;
                top->up->down = newNode;
                ++top->nodeCount;
                top->up = newNode;
                if (top->down == top)
                    top->down = newNode;
                prev = newNode;
            }
        }
    }
    headerNode = header;
}

void coverNumbers(int (&anyPuzzle)[9][9]) {
    int num{0};
    // Go through the Sudoku puzzle, look for non-empty cell.
    for(int i{0}; 9>i; ++i ) {
        for (int j{0}; 9 > j; ++j) {
            // If found non-empty cell.
            if (0 < anyPuzzle[i][j]) {
                // Initialise null pointers.
                Node *colR = nullptr;
                Node *colD = nullptr;
                // Move through the binary matrix to find non-empty cell's element ID.
                for (colR = headerNode->right; colR != headerNode; colR = colR->right) {
                    bool flag = false; // reset flag to false.
                    for (colD = colR->down; colD != colR; colD = colD->down) {
                        if (colD->elementID[0] == anyPuzzle[i][j] && (colD->elementID[1] - 1) == i &&
                            (colD->elementID[2]-1) == j) {
                            flag = true; // break out of two for loops.
                            break;
                        }
                    }
                    if (flag) {
                        break;
                    }
                }
                // Cover the column corresponds to a non-empty cell.
                cover(colR);
                originals[num] = colD;
                ++num;
                for (Node *node = colD->right; node != colD; node = node->right) {
                    cover(node->head);
                }

            }
        }
    }
}

void exactCoverToSudoku(int (&anySudoku)[9][9]) {
    for (int i{0}; solutions[i] != nullptr; ++i) {
        anySudoku[solutions[i]->elementID[1]-1][solutions[i]->elementID[2]-1] = solutions[i]->elementID[0];
    }
    for (int i{0}; originals[i] != nullptr; ++i) {
        anySudoku[originals[i]->elementID[1] - 1][originals[i]->elementID[2] - 1] = originals[i]->elementID[0];
    }
}

void solveSudoku(int (&anySudoku)[9][9]) {
    // Create a binary matrix for Sudoku problem.
    binaryMatrix(matrix);
    // Create linked-list
    linkedList(matrix);
    // Cover values already on Sudoku board.
    coverNumbers(anySudoku);
    // Solve with algorithm X.
    algoX(0);

    if (!solved) {
        std::cout << "No Solution" << std::endl;
    }
    solved = false;
}



