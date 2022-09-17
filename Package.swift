// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Pub",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "Pub",
            targets: ["Pub"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "Pub",
            dependencies: ["Publish"]
        )
    ]
)