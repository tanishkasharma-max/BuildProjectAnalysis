#include <iostream>
#include "calculator.hpp"
using namespace std;


int main() {
    Calculator calc;
    double num1=10.5;
    double num2=15.2;


    double sum = calc.adding(num1, num2);
    double difference = calc.subtract(num1, num2);

    cout << "Sum: " << sum <<endl;
    cout << "Difference: " << difference <<endl;

    return 0;
}
