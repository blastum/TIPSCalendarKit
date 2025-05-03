// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TIPSCalLib",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "TIPSCalLib",
            targets: ["TIPSCalLib"]),
    ],
    dependencies: [
        .package(url: "https://github.com/blastum/TIPSKit.git", branch: "master"),
        .package(url: "https://github.com/blastum/FetchKit.git", branch: "master")
    ],
    targets: [
        .target(
            name: "TIPSCalLib",
            dependencies: [
                .product(name: "TIPSKit", package: "TIPSKit"),
                .product(name: "FetchKit", package: "FetchKit")
            ]),
        .testTarget(
            name: "TIPSCalLibTests",
            dependencies: ["TIPSCalLib"]
        ),
    ]
)
