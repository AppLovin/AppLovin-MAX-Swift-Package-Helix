// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationHelixAdapter",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "AppLovinMediationHelixAdapter",
            targets: ["AppLovinMediationHelixAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/VoodooADN/ios-sdk-swiftpackage.git", exact: "4.30.2")
    ],
    targets: [
        .target(
            name: "AppLovinMediationHelixAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationHelixAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "VoodooADN", package: "ios-sdk-swiftpackage"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationHelixAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/helix-adapter/AppLovinMediationHelixAdapter-4.30.2.0.zip",
            checksum: "8027f5a95cd5567bb1b3cb418df9fdae734a562daed650e97c624f3b9d68c157"
        )
    ]
)
