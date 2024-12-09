// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SnowOfwModule",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SnowOfwModule",
            targets: ["SnowOfwModule", "SnowOfwModuleTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.6.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "SnowOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-snow-ios/releases/download/0.10.2/SnowOfwModule.zip",
            checksum: "ff11c2dc1be93c1af0de9eaa0a267ce4ba24cbca7baac4ae4b9a455845f28376"
        ),
        .target(
            name: "SnowOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
