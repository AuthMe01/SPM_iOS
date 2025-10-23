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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.43/AuthMe.xcframework.zip",
            checksum: "2d41f638b6684bc49acf45f5bde1994ac7e6cc6d220cd2c8636ff287b5ad0b0f"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.43/AuthMeUI.xcframework.zip",
            checksum: "d6fe262c49be5cc55e0d368ec6f73a2d129dc34188c12316e0feb8c5ae886842"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.11/Algo.xcframework.zip",
            checksum: "cf2f839411eb844f3f86021d8b55b917da2b80b77b0620364d3d9a8280c13167"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.19/AuthmeNFCKit.xcframework.zip",
            checksum: "dc50cddceb396782711e02162f36a3d3cc3264323f360d26bdb0590134f3db7f"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.11/OpenSSL.xcframework.zip",
            checksum: "089bbe3f344dfca414c8a88d3ad81867b2f3361da2fee9990aba52537e39847f"
        )
    ]
)
