cmake_minimum_required(VERSION 3.10)

project(embedded_deformation)

set(CMAKE_CXX_STANDARD 11)

# Load dependencies and packages
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
include(FetchDependencies)
find_package(Eigen3 REQUIRED)
find_package(Ceres REQUIRED)

# Compile the library
add_subdirectory(embedded_deformation)

# Compile the executable
add_executable(embedded_deformation_sample app/embedded_deformation_sample.cpp)
target_link_libraries(embedded_deformation_sample PUBLIC utils embedded_deformation yaml-cpp::yaml-cpp)
