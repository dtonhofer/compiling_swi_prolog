#!/bin/bash

# %COPYMARK%

# ---
# This script is copied into /etc/profile.d so that it is run whenever bash
# is started. It extends the PATH with the bin directory of the (current)
# SWI-Prolog distribution (found in /usr/local/logic/swipl in this case)
# and also sets the SWIPL_HOME environment variable.
#
# Additionally, it sets the path to "clingo" (the Potsdam ASP Solver) if it exists
# ---

# ---
# /usr/local/logic/swipl is the directory into which my self-compiled
# SWI-Prolog has been installed.
#
# The corresponding RPM package "swi-prolog" that comes with "Fedora" 
# distributes files over the filetree. 
# On 2026-01-29 the package "swi-prolog" is at 9.2.9, whereas the development 
# version of SWI-Prolog is at 10.1.2.
# ---

function extendPath_swipl {
   local SWIPL="/usr/local/logic/swipl"
   local BIN="${SWIPL}/bin"
   if [[ -d "${BIN}" ]]; then
      export PATH="${BIN}:${PATH}"
      export SWIPL_HOME="$SWIPL"
   fi
}

function extendPath_clingo {
   local CLINGO="/usr/local/logic/clingo"
   local BIN="${CLINGO}"
   if [[ -d "${BIN}" ]]; then
      export PATH="${BIN}:${PATH}"
   fi
}

extendPath_swipl
# extendPath_clingo

unset extendPath_swipl
unset extendPath_clingo


