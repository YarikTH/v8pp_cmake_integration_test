set(DEST_DIR ${CMAKE_CURRENT_LIST_DIR}/../integration_test)

function(generate_integration_cmake name cmake_min_ver)
    set(CMAKE_MIN_VER ${cmake_min_ver})
    file(READ ${CMAKE_CURRENT_LIST_DIR}/${name}.cmake CMAKE_LISTS_TXT_BODY)
    configure_file(
        ${CMAKE_CURRENT_LIST_DIR}/integration_main.cmake
        ${DEST_DIR}/${name}/CMakeLists.txt
        @ONLY
    )
    
    set(TEST_CPP ../../support/test.cpp)
    set(TEST_CPP_LINKED_COPY ${DEST_DIR}/${name}/test.cpp)
    file(CREATE_LINK "${TEST_CPP}" "${TEST_CPP_LINKED_COPY}" SYMBOLIC)
    
    set(FINDV8_CMAKE ../../support/FindV8.cmake)
    set(FINDV8_CMAKE_LINKED_COPY ${DEST_DIR}/${name}/FindV8.cmake)
    file(CREATE_LINK "${FINDV8_CMAKE}" "${FINDV8_CMAKE_LINKED_COPY}" SYMBOLIC)
endfunction()

generate_integration_cmake(cmake_fetch_content 3.11)
generate_integration_cmake(cmake_find_package 3.8)
generate_integration_cmake(cmake_subdirectory 3.8)
