# CMake integration using find_package

If you have installed version of v8pp (manually or via packet manager)
then a proper way for CMake is using `find_package`.
As a result, we get the `v8pp::v8pp` target that should be linked to
the needed library.

## Install v8pp locally

To run `find_package` test we need installed version on v8pp. The easies way
to get it - install v8pp locally, using CMake:

```console
cmake -B build_v8pp -DCMAKE_INSTALL_PREFIX=install_v8pp -S <path_to_v8pp_root>
cmake --build build_v8pp --target install
```

## Running test

To run the test you should use a common CMake pattern:

```console
mkdir build
cd build
cmake ..
cmake --build .
./cmake_test && echo SUCCESS || echo FAIL
```

If you installed v8pp locally, then add `CMAKE_PREFIX_PATH` at the CMake
configuration time:

```console
cmake -DCMAKE_PREFIX_PATH=install_v8pp ..
```
