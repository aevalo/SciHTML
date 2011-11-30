include(${QT_USE_FILE})

set(SCIHTML_SRCS main.cpp mainwindow.cpp mainwindowsci.cpp)
set(SCIHTML_HDRS mainwindow.h mainwindowsci.h)
set(SCIHTML_UIS mainwindowsci.ui)
set(SCIHTML_QRCS SciHTML.qrc)

qt4_wrap_cpp(SCIHTML_MOC_SRCS ${SCIHTML_HDRS})
qt4_wrap_ui(SCIHTML_UI_FILES ${SCIHTML_UIS})
qt4_add_resources(SCIHTML_QRC_FILES ${SCIHTML_QRCS})

include_directories("${CMAKE_BINARY_DIR}/src")

add_executable(scihtml ${SCIHTML_SRCS} ${SCIHTML_HDRS} ${SCIHTML_MOC_SRCS} ${SCIHTML_UI_FILES} ${SCIHTML_QRC_FILES})
target_link_libraries(scihtml ${QT_LIBRARIES} qscintilla2)

install(TARGETS scihtml DESTINATION bin)
