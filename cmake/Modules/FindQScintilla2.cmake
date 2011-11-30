# Locate QScintilla2 library
# This module defines
# QSCINTILLA2_LIBRARY, the name of the library to link against
# QSCINTILLA2_FOUND, if false, do not try to link to SDL
# QSCINTILLA2_INCLUDE_DIR, where to find qsciscintilla.h

FIND_PATH(QSCINTILLA2_INCLUDE_DIR qsciscintilla.h
  HINTS
  $ENV{QSCI2DIR}
  PATH_SUFFIXES include Qsci
  PATHS
  ~/Library/Frameworks
  /Library/Frameworks
  /usr/local/include
  /usr/local/include/qt4
  /usr/include
  /usr/include/qt4
  /sw
  /opt/local
  /opt/csw
  /opt
)

FIND_LIBRARY(QSCINTILLA2_LIBRARY
  NAMES qscintilla2
  HINTS
  $ENV{QSCI2DIR}
  PATH_SUFFIXES lib64 lib
  PATHS
  /sw
  /opt/local
  /opt/csw
  /opt
)

SET(QSCINTILLA2_FOUND "NO")
IF(QSCINTILLA2_LIBRARY AND QSCINTILLA2_INCLUDE_DIR)

  # Set the final string here so the GUI reflects the final state.
  SET(QSCINTILLA2_INCLUDE_DIR ${QSCINTILLA2_INCLUDE_DIR} CACHE STRING "Where the QScintilla2 include directory is located.")

  # Set the final string here so the GUI reflects the final state.
  SET(QSCINTILLA2_LIBRARY ${QSCINTILLA2_LIBRARY} CACHE STRING "Where the QScintilla2 Library can be found.")

  SET(QSCINTILLA2_FOUND "YES")
ENDIF(QSCINTILLA2_LIBRARY AND QSCINTILLA2_INCLUDE_DIR)
