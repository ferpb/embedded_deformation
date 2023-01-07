include(FetchContent)

# get polyscope
FetchContent_Declare(polyscope
    GIT_REPOSITORY https://github.com/nmwsharp/polyscope.git
    GIT_TAG        56b82cd
)
FetchContent_GetProperties(polyscope)
if(NOT polyscope_POPULATED)
    message("Fetching: polyscope...")
    FetchContent_Populate(polyscope)
    add_subdirectory(${polyscope_SOURCE_DIR} ${polyscope_BINARY_DIR})
endif()

# get yaml-cpp
FetchContent_Declare(yaml-cpp
    GIT_REPOSITORY https://github.com/jbeder/yaml-cpp.git
    GIT_TAG 1b50109)
FetchContent_GetProperties(yaml-cpp)

if(NOT yaml-cpp_POPULATED)
    message(STATUS "Fetching yaml-cpp...")
    FetchContent_Populate(yaml-cpp)
    add_subdirectory(${yaml-cpp_SOURCE_DIR} ${yaml-cpp_BINARY_DIR})
endif()

# get utils
include(FetchContent)
FetchContent_Declare(utils
    GIT_REPOSITORY https://github.com/rFalque/utils.git
    GIT_TAG        7a614f3
)
FetchContent_GetProperties(utils)
if(NOT utils_POPULATED)
    message("Fetching: utils...")
    FetchContent_Populate(utils)
    add_subdirectory(${utils_SOURCE_DIR} ${utils_BINARY_DIR})
endif()

# get libGraphCpp
include(FetchContent)
FetchContent_Declare(libGraphCpp
    GIT_REPOSITORY https://github.com/ferpb/libGraphCpp
    GIT_TAG        992d4e7
)
FetchContent_GetProperties(libGraphCpp)
if(NOT libgraphcpp_POPULATED)
    message("Fetching: libGraphCpp...")
    FetchContent_Populate(libGraphCpp)
    add_subdirectory(${libgraphcpp_SOURCE_DIR} ${libgraphcpp_BINARY_DIR})
endif()
