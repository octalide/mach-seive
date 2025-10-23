Mach Seive
---

An implementation of a simple seive calculator in Mach.
It is not meant to be a useful or efficient implementation, but rather a demonstration of the basic features of the Mach programming language.

This project demonstrates the intended structure of a mach project, including
the use of dependencies (of which the standard library is one).

# Building

## Caveat

`cmach` is currently required to build this project. To get `cmach`, clone [https://github.com/octalide/mach](https://github.com/octalide/mach) and follow the instructions to build up to the "cmach" stage (this is as simple as running `make cmach`).

You will then need to ensure that the `cmach` binary is in your path (or define its location with the `CMACH` environment variable).
You will ALSO need to specify the location of the standard library (`mach/std`) with the `MACH_STD` environment variable.

To build the project, run:

```
make
```

This will compile the source files and place the resulting binary in the `out/bin/` directory.

To run the resulting binary, execute it directly or use:

```
make run
```

# Notes

`Makefile` is required to build this project because of the current limitations of `cmach`. This will change in the future.
