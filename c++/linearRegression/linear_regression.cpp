#include <iostream>

#include "Matrix.h"

using namespace std;

int main() 
{

    Matrix m = Matrix(4, 4);
    
    m[0][1] = 10;

    cout << m[0][1];

    return 0;
}