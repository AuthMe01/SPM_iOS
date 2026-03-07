// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AuthMeSPM",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AuthMeSPM",
            targets: [
                "AuthMeSPM",
                "AuthMe",
                "AuthMeUI",
                "Algo",
                "AuthmeNFCKit",
                "OpenSSL"
            ]),
    ],
    targets: [
        .target(
            name: "AuthMeSPM"
        ),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.4/AuthMe.xcframework.zip",
            checksum: "fadd43d00579408851abea688ac91e4a250e0d0d348d27cfa66d1651234674e6"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.4/AuthMeUI.xcframework.zip",
            checksum: "d75447f885c3b54cd451b9649c5197f4d95b0a37ab2e2a2befe3d321ec7d91a7"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.23/Algo.xcframework.zip",
            checksum: "ffed40c75422a3e5437e400e2e019f62af4da9df011f3a147cadbb09cf0f4d74"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.2/AuthmeNFCKit.xcframework.zip",
            checksum: "fef2f03869f3ca4a26210135afb6aa89e154fee299151904429fb9b3a013534d"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.23/OpenSSL.xcframework.zip",
            checksum: "ae1f52dce955ca3ab4a6013c074c2e76713152b386fe742615f1a9128ebf890e"
        )
    ]
)
