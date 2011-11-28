TEMPLATE      = app
TARGET        = SciHTML
VERSION       = 0.0.1

HEADERS       = mainwindow.h \
                mainwindowsci.h

SOURCES       = main.cpp \
                mainwindow.cpp \
                mainwindowsci.cpp

FORMS         = mainwindowsci.ui

RESOURCES     = SciHTML.qrc

LIBS          = -lqscintilla2

MOC_DIR       = ../tmp
OBJECTS_DIR   = ../tmp
UI_DIR        = ../tmp
RCC_DIR       = ../tmp

 # install
target.path   = SciHTML/bin
INSTALLS     += target
