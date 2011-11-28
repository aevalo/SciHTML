include(${QT_USE_FILE})

set(SCIHTML_SRCS main.cpp mainwindow.cpp mainwindowsci.cpp)
set(SCIHTML_HDRS mainwindow.h mainwindowsci.h)
set(SCIHTML_UIS mainwindowsci.ui)

qt4_automoc(${SCIHTML_SRCS})

add_executable(scihtml ${SCIHTML_SRCS} ${SCIHTML_HDRS})
target_link_libraries(scihtml ${QT_LIBRARIES})
