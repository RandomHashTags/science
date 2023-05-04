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
        ),
        .library(name: "UserInterfaceMacOS", targets: ["UserInterfaceMacOS"])
    ],
    dependencies: [
        .package(url: "https://github.com/RandomHashTags/swift_huge-numbers.git", from: "1.0.10")
    ],
    targets: [
        .target(
            name: "science",
            dependencies: [
                .product(name: "huge-numbers", package: "swift_huge-numbers")
            ],
            exclude: ["renderer", "ui"]
        ),
        
        .target(
            name: "RendererMetal",
            dependencies: ["RendererMetalSharedTypes"],
            path: "./Sources/science/renderer/metal"
        ),
        .target(name: "RendererMetalSharedTypes", path: "./Sources/science/renderer/metal_shared_types"),
        
        .target(
            name: "UserInterfaceMacOS",
            dependencies: ["science"],
            path: "./Sources/science/ui/platform/macOS"
        ),
        
        .executableTarget(
            name: "Run",
            dependencies: ["science", "UserInterfaceMacOS"]
        ),
        .testTarget(
            name: "scienceTests",
            dependencies: [
                "science",
                "RendererMetal",
                .product(name: "huge-numbers", package: "swift_huge-numbers")
            ]
        ),
    ]
)
