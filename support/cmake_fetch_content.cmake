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
