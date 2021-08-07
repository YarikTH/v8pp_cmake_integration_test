cmake_minimum_required(VERSION @CMAKE_MIN_VER@)
project(cmake_test LANGUAGES CXX)

# Find V8 package
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

find_package(V8 REQUIRED)

# =====================================

@CMAKE_LISTS_TXT_BODY@
# =====================================

# Add test target using v8pp
add_executable(cmake_test test.cpp)

target_link_libraries(cmake_test PRIVATE v8pp::v8pp)
