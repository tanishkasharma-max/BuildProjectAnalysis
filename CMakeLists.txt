cmake_minimum_required(VERSION 3.13)
project(CalculatorApp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(calculator_app
    src/main.cpp
    src/calculator.cpp
)
