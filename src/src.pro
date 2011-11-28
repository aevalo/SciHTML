TEMPLATE      = app
TARGET        = SciHTML
VERSION       = 0.0.1

HEADERS       = mainwindow.h
SOURCES       = main.cpp \
                mainwindow.cpp
RESOURCES     = SciHTML.qrc

MOC_DIR       = ../tmp
OBJECTS_DIR   = ../tmp
UI_DIR        = ../tmp
RCC_DIR       = ../tmp

 # install
target.path   = SciHTML/bin
INSTALLS     += target
