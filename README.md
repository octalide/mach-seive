Mach Sieve
---

An implementation of the eratosthenes sieve algorithm in Mach.
It is not meant to be a useful or efficient implementation, but rather a demonstration of the basic features of the Mach programming language.

This project demonstrates the intended structure of a mach project, including the use of dependencies (of which the standard library is one).

# Building

`cmach` is currently required to build this project. To get `cmach`, clone [https://github.com/octalide/mach](https://github.com/octalide/mach) and follow the instructions to build up to the "cmach" stage (this is as simple as running `make cmach`).

You will then need to ensure that the produced `cmach` binary is in your path.

To build the project, run:

```bash
cmach build .
```

This will compile the source files and place the resulting binary in the `out/<target>/bin/` directory.

You can also run the project after building with:

```bash
cmach run .
```
