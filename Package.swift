// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SnowOfwModule",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SnowOfwModule",
            targets: ["SnowOfwModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.6.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "SnowOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-snow-ios/releases/download/0.10.0/SnowOfwModule.zip",
            checksum: "7ac4a6c939c63a5b99de4b3fb88f2e17faa10a4c81cac563a6904409e6b5144e"
        ),
        .target(
            name: "SnowOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
