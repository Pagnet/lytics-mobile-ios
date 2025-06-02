// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Lytics",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Lytics",
            targets: ["Lytics"]
        )
    ],
    targets: [
        .target(
            name: "Lytics",
            dependencies: [],
            path: "Sources/Lytics"
        )
    ],
    swiftLanguageVersions: [.v5]
)
