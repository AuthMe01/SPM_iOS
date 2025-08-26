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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.51/AuthMe.xcframework.zip",
            checksum: "1f71828a36da8a816c23c2bfdaa4f21a29c47cc2ef27004d13b24ddc322dfa55"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.51/AuthMeUI.xcframework.zip",
            checksum: "8e400d838bdf9af72c83b45fb4b190aa43994bea67c462eb51a8ea27a31e5bd1"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.22/Algo.xcframework.zip",
            checksum: "aea51bf91a7ce6db010da8ec90eaa436e28fd3db97ff32f5ba65e4045370bde0"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.19/AuthmeNFCKit.xcframework.zip",
            checksum: "dc50cddceb396782711e02162f36a3d3cc3264323f360d26bdb0590134f3db7f"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.22/OpenSSL.xcframework.zip",
            checksum: "81de15fc83b2a750dc9c742b2d8def4f6feceb1acfe63984e06b0129bc0fe1cd"
        )
    ]
)
