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
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.8.6")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "SnowOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-snow-ios/releases/download/0.11.0/SnowOfwModule.zip",
            checksum: "e0c4a40921da9d648b70b26430f5eb4ca067915f436bf492c250cd45f078f171"
        ),
        .target(
            name: "SnowOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
