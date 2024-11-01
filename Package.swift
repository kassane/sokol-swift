// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sokol-swift",
    products: [
        .library(
            name: "sokol-swift",
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
                .define("SOKOL_GLES3", .when(platforms: [.linux])),
                .define("SOKOL_METAL", .when(platforms: [.macOS])),
                .unsafeFlags(["-w"]),
            ],
            swiftSettings: [
                .unsafeFlags(["-import-objc-header", "c/sokol.h"])
            ]
        ),
        .executableTarget(
            name: "clear",
            dependencies: ["sokol"],
            path: "Examples",
            sources: ["clear.swift"]
        ),
    ],
)
