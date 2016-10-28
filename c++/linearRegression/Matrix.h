#ifndef MATRIX_H
#define MATRIX_H

class Matrix {

private:
    int rows;
    int columns;
    double** data;

public:
    ~Matrix();
    Matrix(int rows, int columns);

    double* operator[](int row) {

        return this->data[row];
    }
};

#endif
