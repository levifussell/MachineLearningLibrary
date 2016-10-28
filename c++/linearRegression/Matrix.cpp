#include "Matrix.h"

Matrix::~Matrix() {

    for(int i = 0; i < rows; ++i) {
        delete [] this->data[i];
    }

    delete [] this->data;

}

Matrix::Matrix(int rows, int columns) {

    this->rows = rows;
    this->columns = columns;

    this->data = new double*[rows];
    for(int i = 0; i < rows; ++i) {
        this->data[i] = new double[columns];
    }
}