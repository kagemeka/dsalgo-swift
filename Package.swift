// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Dsalgo",
  products: [.library(name: "dsalgo", targets: ["Dsalgo"])],
  dependencies: [],

  targets: [
    .target(
      name: "Dsalgo"  // resources: [.process("Sources/")]
    ),
    .testTarget(name: "DsalgoTests"),
  ]
)
