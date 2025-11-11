# BuildProjectAnalysis


## Getting Started

#### Using Makefile

```bash
make
# Build the project
make
# Run the application
./build/calculator_app
```

#### Using CMake

```bash
mkdir -p build
cd build
cmake .. -G "Makefiles"
cmake --build .
./calculator_app
```
#### Using Ninja

```bash
mkdir -p build
cd build
cmake .. -G Ninja
ninja
./calculator_app
```
#### Using Scons
```bash
scons
./app
```
#### Using Premake

```bash
premake5 gmake
make -C build/premake
./build/premake/CalculatorApp
```
#### Using Meson
```bash
meson setup build/meson .
meson compile -C build/meson
./build/meson/calculator_app
```
#### Using Script    (Use this prefer)
```bash
./scripts/build.sh

# Build using specific system
./scripts/build.sh make
./scripts/build.sh cmake
./scripts/build.sh ninja
./scripts/build.sh premake
./scripts/build.sh meson
```




## Directory Structure

```
BuildProjectAnalysis/
├── src/ # C++ source files
│ ├── calculator.hpp
│ ├── calculator.cpp
│ └── main.cpp
├── scripts/ # Shell scripts
│ └── build.sh # Unified build script to choose build system
├── build/ # Build output directories
├── CMakeLists.txt # CMake configuration
├── premake5.lua # Premake configuration
├── meson.build # Meson configuration
└── Makefile # Main Makefile
'''

After build Calculator_app

Enter first number, second number








