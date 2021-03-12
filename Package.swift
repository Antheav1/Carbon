// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Carbon",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "Carbon", targets: ["Carbon"])
    ],
    dependencies: [
        .package(url: "https://github.com/Antheav1/DifferenceKit.git", .upToNextMinor(from: "1.1.3"))
    ],
    targets: [
        .target(
            name: "Carbon",
            dependencies: ["DifferenceKit"],
            path: "Sources"
        ),
        .testTarget(
            name: "Tests",
            dependencies: ["Carbon"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
