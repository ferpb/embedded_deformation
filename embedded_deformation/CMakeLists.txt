cmake_minimum_required(VERSION 3.10)

project(embedded_deformation)

set(EMBEDDED_DEFORMATION_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/include")
set(SRC_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/src/")

set(SRCS
    ${SRC_ROOT}/embedded_deformation/embedDeform.cpp
    ${SRC_ROOT}/embedded_deformation/greedySearch.cpp
)

add_library(embedded_deformation ${SRCS})
target_include_directories(embedded_deformation PUBLIC ${EMBEDDED_DEFORMATION_INCLUDE_DIR})
target_include_directories(embedded_deformation PRIVATE ${EMBEDDED_DEFORMATION_INCLUDE_DIR}/embedded_deformation)

target_include_directories(embedded_deformation PRIVATE ${EIGEN3_INCLUDE_DIR})
target_include_directories(embedded_deformation PRIVATE ${CERES_INCLUDE_DIRS})

target_link_libraries(embedded_deformation ${CERES_LIBRARIES} polyscope libGraphCpp)
