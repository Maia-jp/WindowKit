// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WindowKit",
    platforms: [
        .macOS(.v10_15), // <-- Added this line
        .iOS(.v14),
        .tvOS(.v14),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "WindowKit",
            targets: ["WindowKit"]
        )
    ],
    dependencies: [
        // Use the specific products from the packages
        .package(url: "https://github.com/divadretlaw/WindowReader", from: "3.0.0"),
        .package(url: "https://github.com/divadretlaw/WindowSceneReader", from: "3.2.0")
    ],
    targets: [
        .target(
            name: "WindowKit",
            dependencies: [
                // Reference the products correctly
                .product(name: "WindowReader", package: "WindowReader"),
                .product(name: "WindowSceneReader", package: "WindowSceneReader")
            ]
        )
    ]
)
