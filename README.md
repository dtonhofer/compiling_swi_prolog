# Compiling SWI Prolog on Linux

This repository contains a bash script to compile [SWI Prolog](https://www.swi-prolog.org), which
means cloning the SWI-Prolog repository and the module repositories, launching configuration then
launching [`ninja-build`](https://ninja-build.org/) to do the build itself.

However, I have just tested this on a Fedora distribution.


## File tree

![File Structure with JPL](pics/file_tree.svg)

## File tree with JPL

"JPL" is the Java<->Prolog bridge for in-process communication between the two "language universes".

![File Structure with JPL](pics/file_tree_with_jpl.svg)


