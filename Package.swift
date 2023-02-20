// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "DsAlgo",
    products: [.library(name: "dsalgo", targets: ["cplib"])],
    dependencies: [],

    targets: [
        .target(
            name: "cplib"
        ),
        .executableTarget(
            name: "main",
            dependencies: ["cplib"]
        ),
        .testTarget(name: "cplib_test"),
    ]
)
