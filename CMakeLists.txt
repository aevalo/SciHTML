#http://qtnode.net/wiki/Qt4_with_cmake

project(SciHTML)
cmake_minimum_required(VERSION 2.8)

# where to look first for cmake modules, before ${CMAKE_ROOT}/Modules/ is checked
set(CMAKE_MODULE_PATH
  ${CMAKE_SOURCE_DIR}/cmake/Modules
)

include(CheckOutOfSourceBuild)

CheckOutOfSourceBuild("This project must be built out-of-source!")

find_package(Qt4 COMPONENTS QtCore QtGui QtWebkit REQUIRED)
find_package(QScintilla2 REQUIRED)

add_subdirectory(src)
