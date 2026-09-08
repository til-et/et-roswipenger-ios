// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ROSwipenger",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "ROSwipenger", targets: ["ROSwipenger"])
    ],
    dependencies: [
        .package(url: "https://github.com/PureLayout/PureLayout.git", exact: "3.1.9")
    ],
    targets: [
        .target(
            name: "ROSwipenger",
            dependencies: [
                .product(name: "PureLayout", package: "PureLayout")
            ],
            path: "Pod/Classes",
            publicHeadersPath: "."
        )
    ]
)
