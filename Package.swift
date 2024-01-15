// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "swift-lsm1",
    products: [
        .library(
            name: "SwiftLSM1",
            targets: ["SwiftLSM1"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftLSM1",
            cSettings: [
                .unsafeFlags(["-Wno-shorten-64-to-32"])
            ]
        ),
    ]
)
