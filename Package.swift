// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "science",
    platforms: [
        .iOS(.v13),
        .macOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "science",
            targets: ["science"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/RandomHashTags/swift_huge-numbers.git", from: "1.0.12")
    ],
    targets: [
        .target(
            name: "science",
            dependencies: [
                .product(name: "huge-numbers", package: "swift_huge-numbers")
            ],
            exclude: ["renderer"]
        ),
        .executableTarget(
            name: "Run",
            dependencies: ["science", .target(name: "MacOSUserInterface", condition: .when(platforms: [.macOS]))]
        ),
        
        .target(
            name: "RendererMetal",
            dependencies: ["RendererMetalSharedTypes"],
            path: "./Sources/science/renderer/metal"
        ),
        .target(
            name: "RendererMetalSharedTypes",
            path: "./Sources/science/renderer/metal_shared_types"
        ),
        
        .target(
            name: "MacOSUserInterface",
            dependencies: ["science"],
            path: "./Sources/ui/macOS/views"
        ),
        .executableTarget(
            name: "UserInterfaceMacOS",
            dependencies: ["MacOSUserInterface"],
            path: "./Sources/ui/macOS/run"
        ),
        
        .testTarget(
            name: "scienceTests",
            dependencies: [
                "science",
                .product(name: "huge-numbers", package: "swift_huge-numbers")
            ]
        ),
    ]
)
