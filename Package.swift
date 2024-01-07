// swift-tools-version:5.9
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
            name: "Circuitry",
            targets: ["Circuitry"]
        ),
        .library(
            name: "Physics",
            targets: ["Physics"]
        ),
        .library(
            name: "ScienceUtilities",
            targets: ["ScienceUtilities"]
        ),
        
        .library(
            name: "Science",
            targets: ["Science"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections.git", from: "1.0.5"),
        
        .package(url: "https://github.com/RandomHashTags/swift_huge-numbers.git", from: "1.1.0"),
        .package(url: "https://github.com/RandomHashTags/swift-units.git", from: "1.2.0"),
        .package(url: "https://github.com/tid-kijyun/Kanna.git", from: "5.2.7")
    ],
    targets: [
        
        .target(
            name: "ScienceUtilities",
            dependencies: [
                .product(name: "HugeNumbers", package: "swift_huge-numbers"),
                .product(name: "SwiftUnits", package: "swift-units"),
                .product(name: "OrderedCollections", package: "swift-collections"),
            ],
            path: "./Sources/Utilities"
        ),
        .target(
            name: "Circuitry",
            dependencies: ["ScienceUtilities"],
            path: "./Sources/Circuitry"
        ),
        .target(
            name: "Physics",
            dependencies: ["ScienceUtilities"],
            path: "./Sources/Physics"
        ),
        
        .target(
            name: "Science",
            dependencies: ["Physics"],
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
