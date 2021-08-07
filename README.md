# v8pp cmake integration test

[![Support](https://github.com/YarikTH/v8pp_cmake_integration_test/actions/workflows/support.yml/badge.svg)](https://github.com/YarikTH/v8pp_cmake_integration_test/actions/workflows/support.yml)

This project is intended to check new usage of cmake for [v8pp](https://github.com/pmed/v8pp).

There are plenty of ways to integrate v8pp into the CMake project:

* [Using add_subdirectory](integration_test/cmake_subdirectory/) - if you copy the whole repo of v8pp or add it as a git submodule
* [Using find_package](integration_test/cmake_find_package/) - if you have installed version of v8pp find_package is a proper way to do
* [Using FetchContent](integration_test/cmake_fetch_content/) - modern way to acquire v8pp from GitHub repo (CMake 3.11 is required)

All described CMake integration ways are accompanied by working examples that
are continuously tested on the CI server. You can run the test locally, using
the `integration_check` target of the root [Makefile](Makefile).

```console
make integration_check
```

📝 The ```CMakeLists.txt``` file of the v8pp repository has ```install()```
commands, so you could use v8pp as a package.
[find_package](integration_test/cmake_find_package/readme.md#install-v8pp-locally) example also
contains instructions for it.
