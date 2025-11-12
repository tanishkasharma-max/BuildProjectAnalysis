#include <iostream>
#include "calculator.hpp"
using namespace std;


int main() {
    Calculator calc;
    double num1, num2;

    cout << "Enter first number: ";
    cin >> num1;

    cout << "Enter second number: ";
    cin >> num2;

    double sum = calc.adding(num1, num2);
    double difference = calc.subtract(num1, num2);

    cout << "Sum: " << sum <<endl;
    cout << "Difference: " << difference <<endl;

    return 0;
}
