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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.50/AuthMe.xcframework.zip",
            checksum: "cccf97fab37d3c3a77a9cf6a1fde270989649c44441b93315253fd4dcfbce2c3"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.50/AuthMeUI.xcframework.zip",
            checksum: "5d1a1e9bc52cea4933e23c6b183b8b0a4f48b7dbbc0cb453b8c3ae8bb370327c"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.22/Algo.xcframework.zip",
            checksum: "aea51bf91a7ce6db010da8ec90eaa436e28fd3db97ff32f5ba65e4045370bde0"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.22/OpenSSL.xcframework.zip",
            checksum: "81de15fc83b2a750dc9c742b2d8def4f6feceb1acfe63984e06b0129bc0fe1cd"
        )
    ]
)
