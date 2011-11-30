#http://qtnode.net/wiki/Qt4_with_cmake

project(SciHTML)
cmake_minimum_required(VERSION 2.8)

find_package(Qt4 REQUIRED QTCORE QTGUI QTWEBKIT)

add_subdirectory(src)
