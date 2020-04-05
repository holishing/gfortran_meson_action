# Fortran Program with Meson Build System Simple Compiling Test

* automated fortran programs with Meson Build System building test

* example usage:

```yaml
# This workflow will install Fortran and Meson Build System dependencies, and do compile test

name: Fortran Program with Meson Build System Compiling Test

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        content: [""]
    steps:
    - uses: actions/checkout@v2
    - name: gfortran-autotool compiling test
      uses: holishing/gfortran_meson_action@2020.308.0
      with:
        matrix:
        args:  ${{ matrix.content }}
```
