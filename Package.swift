// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TIPSCalendarLib",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "TIPSCalendarLib",
            targets: ["TIPSCalendarLib"]),
    ],
    dependencies: [
        .package(url: "https://github.com/blastum/TIPSKit.git", branch: "master"),
        .package(url: "https://github.com/blastum/FetchKit.git", branch: "master")
    ],
    targets: [
        .target(
            name: "TIPSCalendarLib",
            dependencies: [
                .product(name: "TIPSKit", package: "TIPSKit"),
                .product(name: "FetchKit", package: "FetchKit")
            ]),
        .testTarget(
            name: "TIPSCalendarLibTests",
            dependencies: ["TIPSCalendarLib"]
        ),
    ]
)
