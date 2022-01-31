// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BrainObjectsCore",
    platforms: [
        .macOS(.v10_14),
    ],
   products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library( name: "Core", targets: ["Core"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "swift-nio", url: "https://github.com/apple/swift-nio.git", from: "2.0.0"),
        .package(url: "git@github.com:tuparev/SoftwareEtudes.git",.branch("dev")),
   ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target( name: "Core",
                 dependencies: [
                    "SoftwareEtudes",
                    .product(name: "NIO", package: "swift-nio"),
                 ],
                 path: "Sources/Core"),
        
        .testTarget( name: "CoreTests", dependencies: ["Core"], path: "Tests/Core"),
    ]
)
