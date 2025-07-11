// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SwiftUINetworkMonitor",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SwiftUINetworkMonitor",
            targets: ["SwiftUINetworkMonitor"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftUINetworkMonitor",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftUINetworkMonitorTests",
            dependencies: ["SwiftUINetworkMonitor"]
        ),
    ]
)

