# Compiling SWI Prolog on Linux

This repository contains a bash script to compile [SWI Prolog](https://www.swi-prolog.org), which means the script will:

1. clone the SWI-Prolog GitHub repository and the related module repositories to your machine;
2. launch configuration;
3. launch [`ninja-build`](https://ninja-build.org/) to build SWI-Prolog.

This automates the annoying and finicky manual process.

**It's meant for Linux Fedora**

The script has been written for and tested on a Fedora Linux distribution and may need adaptation for other systems.

See also [SWI-Prolog on Redhat](https://eu.swi-prolog.org/build/Redhat.html).

latest, 10.1.1
stable, 10.0.0
devel 10.1.2-4

## What does the SWI-Prolog documentation say?

According to the SWI-Prolog documentation (which is more difficult to navigate than it should be), in particular the page [SWI-Prolog downloads](https://www.swi-prolog.org/Download.html):

### The "development version" is "the recommended version for most users"

At [Download SWI-Prolog development versions](https://eu.swi-prolog.org/download/devel)  we read:

> Many active SWI-Prolog users track the development releases or GIT versions for developing Prolog applications.
> Most of the time the development versions are fairly stable. Infrequent larger rewrites to the core
> infrastructure that may cause instability is typically announced on the forum.

- There are [Ubuntu PPA packages](https://eu.swi-prolog.org/build/PPA.html) of the development version at [launchpad](https://launchpad.net/~swi-prolog/+archive/ubuntu/devel).
- There are [flatpack](https://en.wikipedia.org/wiki/Flatpak) images (replacing Canonical [Snap](https://en.wikipedia.org/wiki/Snap_(software)) packages) of the development version at [flathub](https://flathub.org/en/apps/org.swi_prolog.swipl).
- Binaries, Source tarball, a 64-bit Microsoft Windows installer (Nullsoft Installer self-extracting archive), a MacOS X disk image and the SWI-Prolog Reference Manual as a PDF can be found [here](https://eu.swi-prolog.org/download/devel). These a are a couple of patch versions behind the development version (those must be the "daily releases for Windows").
   
### The "stable versions" are intended for cases that demand a fully predictable installation

The "stable version" may be a minor version number behind the "devel version".

At [Download SWI-Prolog development versions](https://eu.swi-prolog.org/download/devel)  we read:

> The stable release is infrequently updated. After an update, the stable version receives only critical patches that are extremely unlikely to break source or binary compatibility. The stable versions are intended for deploying systems or other use cases that require a fully predictable installation.

- There are [Ubuntu PPA packages](https://eu.swi-prolog.org/build/PPA.html) of the stable version at [launchpad](https://launchpad.net/~swi-prolog/+archive/ubuntu/stable). Actually the "stable version" is actually a major version number behind the "development version" in this case (10.1.2-4 vs 9.2.9-3 on 2025-01-31)
- There are [Docker images](https://eu.swi-prolog.org/Docker.html) images of stable version at https://hub.docker.com/_/swipl/

### The Git repository provides the latest resources for building SWI-Prolog yourself

We read:

> Users of other platforms that want or need to stay this close to the daily development are requested to use the GIT sources.

The script in the present repository uses the Git repository.

### Notes

There are additional notes on builing on Linux at [SWI-Prolog -- Installation on Linux, *BSD (Unix)](https://www.swi-prolog.org/build/unix.html) and [How to build from source](https://www.swi-prolog.org/build/).

## File tree

![File Structure with JPL](pics/file_tree.svg)

## File tree with JPL

"JPL" is the Java<->Prolog bridge for in-process communication between the two "language universes".

![File Structure with JPL](pics/file_tree_with_jpl.svg)


