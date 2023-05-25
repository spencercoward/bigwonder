# written by scoward
cmake_minimum_required(VERSION 3.20.0)
project(bigwonder)

# setup some variables to use for finding packages
set(EXTERNAL_LIB_PREFIX "${CMAKE_CURRENT_SOURCE_DIR}/external/install")
set(EXTERNAL_INCLUDE_DIR "${EXTERNAL_LIB_PREFIX}/include")
set(EXTERNAL_LIB_DIR "${EXTERNAL_LIB_PREFIX}/lib")

set(CMAKE_PREFIX_PATH ${EXTERNAL_LIB_DIR}/cmake/Poco)

# need to find these poco packages separately because im having issues just finding poco
find_package(PocoJSON REQUIRED)
find_package(PocoXML REQUIRED)

# find poco
find_package(Poco REQUIRED COMPONENTS Foundation Util XML JSON Zip)

add_executable(bigwonder bigwonder.cpp)
target_link_libraries(bigwonder PUBLIC Poco::Foundation)

# written by scoward