Mach Seive
---

An implementation of the eratosthenes sieve algorithm in Mach.
It is not meant to be a useful or efficient implementation, but rather a demonstration of the basic features of the Mach programming language.

This project demonstrates the intended structure of a mach project, including the use of dependencies (of which the standard library is one).

# Building

`cmach` is currently required to build this project. To get `cmach`, clone [https://github.com/octalide/mach](https://github.com/octalide/mach) and follow the instructions to build up to the "cmach" stage (this is as simple as running `make cmach`).

You will then need to ensure that the produced `cmach` binary is in your path.
You will ALSO need to specify the location of the standard library (`mach/std`) using an environment variable that points to your mach installation location (`MACH_HOME`).

To build the project, run:

```
cmach build .
```

This will compile the source files and place the resulting binary in the `out/bin/` directory.
