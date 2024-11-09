// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sokol",
    products: [
        .library(
            name: "sokol",
            type: .static,
            targets: ["sokol"]),
        .executable(
            name: "clear",
            targets: ["clear"]),
    ],
    targets: [
        // .target(
        //     name: "sokol-swift",
        //     dependencies: ["sokol"],
        //     path: "Sources/sokol",
        //     sources: [
        //         "app.swift", "audio.swift", "gfx.swift", "gl.swift", "glue.swift",  //"imgui.swift",
        //         "debugtext.swift", "log.swift", "shape.swift", "time.swift",
        //     ],
        //     swiftSettings: [.unsafeFlags(["-suppress-warnings"])]
        // ),
        .target(
            name: "sokol",
            path: "Sources/sokol",
            sources: [
                "c/sokol_gfx.c", "c/sokol_app.c", "c/sokol_audio.c",
                "c/sokol_debugtext.c", "c/sokol_fetch.c", "c/sokol_gl.c", "c/sokol_glue.c",
                /*"c/sokol_imgui.c",*/ "c/sokol_log.c", "c/sokol_shape.c", "c/sokol_time.c",
            ],
            publicHeadersPath: "c",
            cSettings: [
                .headerSearchPath("."),
                .define("IMPL"),
                .define("SOKOL_GLES3", .when(platforms: [.linux])),
                .define("SOKOL_METAL", .when(platforms: [.macOS])),
                .unsafeFlags(["-w"]),
            ],
        ),
        .executableTarget(
            name: "clear",
            dependencies: ["sokol"],
            path: "Examples",
            sources: ["clear.swift"],
            swiftSettings: [
                .unsafeFlags(
                    [
                        "-import-bridging-header", "Sources/sokol/c/sokol.h",
                        "-Xlinker",
                        "/home/kassane/sokol-swift/.build/x86_64-unknown-linux-gnu/debug/libsokol.a",
                    ], .when(platforms: [.linux]))
            ],
            linkerSettings: [
                .linkedFramework("Metal", .when(platforms: [.macOS])),
                .linkedFramework("MetalKit", .when(platforms: [.macOS])),
                .linkedFramework("Cocoa", .when(platforms: [.macOS])),
                .linkedLibrary("GL", .when(platforms: [.linux])),
                .linkedLibrary("X11", .when(platforms: [.linux])),
                .linkedLibrary("Xi", .when(platforms: [.linux])),
                .linkedLibrary("Xcursor", .when(platforms: [.linux])),
            ]
        ),
    ],
)
