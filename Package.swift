// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "MinecraftTools",
    products: [
        .library(name: "MinecraftNBT", targets: ["MinecraftNBT"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(name: "MinecraftTools", dependencies: ["MinecraftNBT",
                                                       "DataTools"]),
        
        .target(name: "DataTools"),
        .target(name: "MinecraftNBT", dependencies: ["DataTools"]),

        .testTarget(
            name: "MinecraftToolsTests",
            dependencies: ["MinecraftNBT", "DataTools"]),
    ]
)
