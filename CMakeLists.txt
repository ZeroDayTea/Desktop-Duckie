cmake_minimum_required(VERSION 3.20)
project(Desktop_Duckie)

set(CMAKE_CXX_STANDARD 20)

include_directories(vendor)
add_subdirectory(vendor)

add_executable(Desktop_Duckie main.cpp)

target_link_libraries(Desktop_Duckie vendor)