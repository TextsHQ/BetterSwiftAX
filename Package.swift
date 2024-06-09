// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "BetterSwiftAX",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(
            name: "BetterSwiftAX",
            targets: ["AccessibilityControl"]
        ),
    ],
    targets: [
        .target(
            name: "CWindowControl"
        ),
        .target(
            name: "WindowControl",
            dependencies: ["CWindowControl"]
        ),
        .target(
            name: "CAccessibilityControl"
        ),
        .target(
            name: "AccessibilityControl",
            dependencies: ["CAccessibilityControl", "WindowControl"]
        ),
    ]
)
