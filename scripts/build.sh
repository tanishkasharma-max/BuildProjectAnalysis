#!/bin/bash

# Default build type is 'make' if not provided
BUILD_TYPE=${1:-make}

# Absolute path to project root (parent of scripts folder)
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
BUILD_DIR="$ROOT_DIR/build"

# Create build directory if it doesn't exist
mkdir -p "$BUILD_DIR"

echo "Project root: $ROOT_DIR"
echo "Build directory: $BUILD_DIR"

case "$BUILD_TYPE" in
  make)
    echo "Building with Make."
    make -C "$ROOT_DIR"
    ;;

  cmake)
    echo "Building with CMake."
    cmake -S "$ROOT_DIR" -B "$BUILD_DIR" -G "Makefiles"
    cmake --build "$BUILD_DIR"
    ;;

  ninja)
    echo "Building with Ninja."
    cmake -S "$ROOT_DIR" -B "$BUILD_DIR" -G Ninja
    cmake --build "$BUILD_DIR"
    ;;

  premake)
    echo "Building with Premake..."
    mkdir -p "$BUILD_DIR/premake"
    premake5 --file="$ROOT_DIR/premake5.lua" gmake
    make -C "$BUILD_DIR/premake"
    ;;

  scons)
    echo "Building with SCons."
    (cd "$ROOT_DIR" && scons)
    ;;

  meson)
    echo "Building with Meson..."
    mkdir -p "$BUILD_DIR/meson"
    meson setup "$BUILD_DIR/meson" "$ROOT_DIR"
    meson compile -C "$BUILD_DIR/meson"
    ;;

  *)
    echo "Unknown build type: $BUILD_TYPE"
    echo "Options: make | cmake | ninja | premake | meson | scons"
    exit 1
    ;;
esac

