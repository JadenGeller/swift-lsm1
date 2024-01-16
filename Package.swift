// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "swift-lsm1",
    products: [
        .library(
            name: "CLSM1",
            targets: ["CLSM1"]
        )
    ],
    targets: [
        .target(
            name: "CLSM1",
            cSettings: [
                .unsafeFlags(["-Wno-shorten-64-to-32"])
            ]
        )
    ]
)
