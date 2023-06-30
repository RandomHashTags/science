// swift-tools-version: 5.9
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
            name: "Science",
            targets: ["Science"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/RandomHashTags/swift_huge-numbers.git", from: "1.0.14"),
        .package(url: "https://github.com/tid-kijyun/Kanna.git", from: "5.2.7")
    ],
    targets: [
        .target(
            name: "Science",
            dependencies: [
                .product(name: "HugeNumbers", package: "swift_huge-numbers")
            ],
            path: "./Sources/science"
        ),
        .executableTarget(
            name: "Run",
            dependencies: [
                "Science",
                .target(name: "MacOSUserInterface", condition: .when(platforms: [.macOS]))
            ]
        ),
        
        .target(
            name: "RendererSceneKit",
            dependencies: [
                "Science"
            ],
            path: "./Sources/ui/macOS/renderer/scene_kit"
        ),
        
        .target(
            name: "MacOSUserInterface",
            dependencies: [
                "RendererSceneKit"
            ],
            path: "./Sources/ui/macOS/views"
        ),
        .executableTarget(
            name: "UserInterfaceMacOS",
            dependencies: [
                "MacOSUserInterface"
            ],
            path: "./Sources/ui/macOS/run"
        ),
        
        .testTarget(
            name: "scienceTests",
            dependencies: [
                "Science",
                "Kanna",
                .product(name: "HugeNumbers", package: "swift_huge-numbers")
            ]
        ),
    ]
)
