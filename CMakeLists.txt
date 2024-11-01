
cmake_minimum_required(VERSION 3.16..3.30)

project(sokol-swift)
enable_language(Swift)

# Set C compiler flags
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Define sokol library
add_library(sokol STATIC
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_app.c
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_gfx.c
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_audio.c
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_debugtext.c
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_fetch.c
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_gl.c
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_glue.c
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_imgui.c
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_log.c
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_shape.c
    ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol_time.c
)

target_include_directories(sokol PUBLIC ${CMAKE_SOURCE_DIR}/Sources/sokol/c)

# Platform specific libraries
if(APPLE)
    target_link_libraries(sokol PUBLIC
        "-framework Cocoa"
        "-framework QuartzCore"
        "-framework Metal"
        "-framework MetalKit"
        "-framework AudioToolbox"
    )
elseif(WIN32)
    target_link_libraries(sokol PUBLIC
        d3d11
        dxgi
        xinput
        winmm
    )
else()
    find_package(X11 REQUIRED)
    find_package(OpenGL REQUIRED)
    target_link_libraries(sokol PUBLIC
        X11
        GL
        dl
        pthread
        m
    )
endif()

# Set Swift compiler flags
set(CMAKE_Swift_FLAGS "${CMAKE_Swift_FLAGS} -enable-experimental-feature Extern -import-bridging-header ${CMAKE_SOURCE_DIR}/Sources/sokol/c/sokol.h")


file(GLOB SWIFT_SOKOL_SOURCES
    "${CMAKE_SOURCE_DIR}/Sources/sokol/*.swift"
)

file(GLOB SWIFT_SOURCES
    "${CMAKE_SOURCE_DIR}/Examples/*.swift"
)

foreach(EXAMPLE_SOURCE ${SWIFT_SOURCES})
    get_filename_component(EXAMPLE_NAME ${EXAMPLE_SOURCE} NAME_WE)
    add_executable(${EXAMPLE_NAME})
    target_sources(${EXAMPLE_NAME} PRIVATE ${EXAMPLE_SOURCE} ${SWIFT_SOKOL_SOURCES})
    target_include_directories(${EXAMPLE_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/Sources/sokol/c)
    target_link_libraries(${EXAMPLE_NAME} PRIVATE sokol)
endforeach()
