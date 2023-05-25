#!/bin/bash
# written by scoward

echo ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo // written by scoward
echo ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

BUILD_TYPE=Debug
BW_CMAKE_CONFIGURE_COMMAND="cmake .. -DBUILD_SHARED_LIBS=OFF -DCMAKE_BUILD_TYPE=$BUILD_TYPE"
BW_CMAKE_BUILD_COMMAND="cmake --build ."
BW_CMAKE_INSTALL_COMMAND="cmake --install . --prefix "../../../install""

# setup the location for cloning external libs
mkdir external
pushd external

# create a location to clone things to
mkdir sources

# create a location to install the libs to so we dont have to keep building them after initial setup
mkdir install

# start cloning things
pushd sources

git clone --depth 1 https://github.com/pocoproject/poco.git

git clone --depth 1 https://github.com/zeromq/libzmq.git


# build the libs
pushd poco
mkdir bigwonder-build
pushd bigwonder-build

$BW_CMAKE_CONFIGURE_COMMAND
$BW_CMAKE_BUILD_COMMAND
$BW_CMAKE_INSTALL_COMMAND

popd
popd

pushd libzmq
mkdir bigwonder-build
pushd bigwonder-build

$BW_CMAKE_CONFIGURE_COMMAND
$BW_CMAKE_BUILD_COMMAND
$BW_CMAKE_INSTALL_COMMAND

echo ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo // written by scoward
echo ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# written by scoward