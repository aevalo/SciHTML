macro(CheckOutOfSourceBuild errMsg)
    string(COMPARE EQUAL "${CMAKE_SOURCE_DIR}" "${CMAKE_BINARY_DIR}" isInSourceBuild)
    if(isInSourceBuild)
        message(SEND_ERROR "${errMsg}")
    endif(isInSourceBuild)
endmacro(CheckOutOfSourceBuild)

