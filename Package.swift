// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "dll-demo",
    products: [
        .library(
            name: "library",
            type: .dynamic,
            targets: ["library"]),
        .executable(
            name: "loader",
            targets: ["loader"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-certificates.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "library",
            dependencies: [
                // Commenting out the following line fixes the issue:
                .product(name: "X509", package: "swift-certificates"),
            ]),
        .executableTarget(
            name: "loader")
    ]
)
