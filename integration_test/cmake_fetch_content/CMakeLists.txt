cmake_minimum_required(VERSION 3.11)
project(cmake_test LANGUAGES CXX)

# Find V8 package
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

find_package(V8 REQUIRED)

# =====================================

# gersemi: off
include(FetchContent)

FetchContent_Declare(
    v8pp
    GIT_REPOSITORY https://github.com/YarikTH/v8pp.git
    GIT_TAG "master_2"
)

FetchContent_GetProperties(v8pp)
if(NOT v8pp_POPULATED)
    FetchContent_Populate(v8pp)
    add_subdirectory(${v8pp_SOURCE_DIR} ${v8pp_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()
# gersemi: on

# =====================================

# Add test target using v8pp
add_executable(cmake_test test.cpp)

target_link_libraries(cmake_test PRIVATE v8pp::v8pp)
