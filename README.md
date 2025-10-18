Mach Seive
---

An implementation of a simple seive calculator in Mach.
It is not meant to be a useful or efficient implementation, but rather a demonstration of the basic features of the Mach programming language.

This project demonstrates the intended structure of a mach project, including
the use of dependencies (of which the standard library is one).

The [`mach-c` compiler](https://github.com/octalide/mach-c) is required to build this project.

# Building

To build the project, run:

```
make
```

This will compile the source files and place the resulting binary in the `out/bin/` directory.

# Notes

`Makefile` is required to build this project because of the current limitations of `mach-c`. This will change in the future.
