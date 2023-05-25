#!/bin/bash
# written by scoward

# quick check if setup has been run
if [ ! -d "./external/install/lib" ]
then
   ./setup
fi

# check if we already have a build dir
if [ ! -d "./bigwonder-build" ]
then
   mkdir bigwonder-build
fi

pushd bigwonder-build

cmake ..
cmake --build .

# written by scoward