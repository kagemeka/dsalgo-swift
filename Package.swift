// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "dsalgo",
    products: [.library(name: "dsalgo", targets: ["cplib", "dsalgo"])],
    targets: [
        .target(name: "cplib"),
        .target(name: "dsalgo"),
        .executableTarget(
            name: "main",
            dependencies: [
                "cplib",
                "dsalgo",
            ]
        ),
        .testTarget(name: "cplib_test"),
    ]
)
