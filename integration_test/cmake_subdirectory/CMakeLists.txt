cmake_minimum_required(VERSION 3.8)
project(cmake_test LANGUAGES CXX)

# Find V8 package
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

find_package(V8 REQUIRED)

# =====================================

set(PATH_TO_V8PP ../../v8pp)

add_subdirectory(${PATH_TO_V8PP} thirdparty/v8pp)

# =====================================

# Add test target using v8pp
add_executable(cmake_test test.cpp)

target_link_libraries(cmake_test PRIVATE v8pp::v8pp)
