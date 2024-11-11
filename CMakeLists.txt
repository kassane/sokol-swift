
cmake_minimum_required(VERSION 3.14..3.30)

if(${CMAKE_VERSION} VERSION_LESS 3.14)
    cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
else()
    cmake_policy(SET CMP0169 OLD)
endif()

project(sokol-swift)
enable_language(Swift)

if("${CMAKE_Swift_COMPILER_VERSION}" VERSION_LESS 6.0)
    message(FATAL_ERROR "Swift 6.0 or later is required")
endif()

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "Choose default type of build (Debug)" FORCE)
endif()
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Set C compiler flags
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)


file(GLOB SOKOL_C_SOURCES
    "${CMAKE_SOURCE_DIR}/Sources/Sokol/c/*.c"
)
# Define sokol library
add_library(sokol STATIC)
target_sources(sokol PRIVATE ${SOKOL_C_SOURCES})
target_include_directories(sokol PUBLIC ${CMAKE_SOURCE_DIR}/Sources/Sokol/c)
target_compile_definitions(sokol PUBLIC -DIMPL)

# Platform specific libraries
if(APPLE)
    target_compile_definitions(sokol PUBLIC -DSOKOL_METAL)
    target_compile_options(sokol PRIVATE -x objective-c)
    target_link_libraries(sokol PUBLIC
        "-framework Cocoa"
        "-framework QuartzCore"
        "-framework Metal"
        "-framework MetalKit"
        "-framework AudioToolbox"
    )
elseif(WIN32)
    target_compile_definitions(sokol PUBLIC -DSOKOL_D3D11)
    target_link_libraries(sokol PUBLIC
        d3d11
        dxgi
        xinput
        winmm
    )
else()
    target_compile_definitions(sokol PUBLIC -DSOKOL_GLCORE)
    find_package(X11 REQUIRED)
    find_package(OpenGL REQUIRED)
    target_link_libraries(sokol PUBLIC
        X11
        GL
        Xi
        Xcursor
        asound
    )
endif()

# Set Swift compiler flags
set(CMAKE_Swift_FLAGS "${CMAKE_Swift_FLAGS} -enable-experimental-feature Extern -Xfrontend -enable-single-module-llvm-emission")
# set(CMAKE_Swift_FLAGS "${CMAKE_Swift_FLAGS} -import-bridging-header ${CMAKE_SOURCE_DIR}/Sources/Sokol/c/sokol.h")
set(CMAKE_Swift_FLAGS "${CMAKE_Swift_FLAGS} -I ${CMAKE_SOURCE_DIR}/Sources/Sokol -L ${CMAKE_SOURCE_DIR}/Sources/Sokol/c")

# Build  Swift modules (each Swift module is a static library) disambiguously named in the module
file(GLOB SWIFT_SOKOL_SOURCES
    "${CMAKE_SOURCE_DIR}/Sources/Sokol/*.swiftinterface"
)
# foreach(SOKOL_SOURCE ${SWIFT_SOKOL_SOURCES})
#     get_filename_component(MODULE_NAME ${SOKOL_SOURCE} NAME_WE)
#     add_library(${MODULE_NAME} STATIC)
#     set_target_properties(${MODULE_NAME} PROPERTIES
#         SWIFT_FLAGS "${CMAKE_Swift_FLAGS} -Xfrontend -module-name=${MODULE_NAME}"
#     )
#     target_sources(${MODULE_NAME} PRIVATE ${SOKOL_SOURCE})
# endforeach()


file(GLOB SWIFT_SOURCES
    "${CMAKE_SOURCE_DIR}/Examples/*.swift"
)
foreach(EXAMPLE_SOURCE ${SWIFT_SOURCES})
    get_filename_component(EXAMPLE_NAME ${EXAMPLE_SOURCE} NAME_WE)
    add_executable(${EXAMPLE_NAME})
    target_sources(${EXAMPLE_NAME} PRIVATE ${EXAMPLE_SOURCE}) # ${SWIFT_SOKOL_SOURCES})
    target_include_directories(${EXAMPLE_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/Sources/Sokol/c)
    target_link_libraries(${EXAMPLE_NAME} PRIVATE sokol ${MODULE_NAME})
endforeach()
