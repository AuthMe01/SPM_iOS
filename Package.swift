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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.51/AuthMe.xcframework.zip",
            checksum: "5fb17dbf27bfd9e1d8baa784b4caeba70bcb0666188f07f70594ef8be35f8fbb"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.51/AuthMeUI.xcframework.zip",
            checksum: "adc3308fd9d796be78cdcefecb87e851cb06ea5d74f474db0b6573f7d70a5c52"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.14/Algo.xcframework.zip",
            checksum: "73a5383614f765770b78339c17c5570b177b5e611a31c7339f1ddc3d433d0e9b"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.19/AuthmeNFCKit.xcframework.zip",
            checksum: "dc50cddceb396782711e02162f36a3d3cc3264323f360d26bdb0590134f3db7f"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.14/OpenSSL.xcframework.zip",
            checksum: "60a6df8d3922f1ac641a72d052ad043976e28de52ba4de8793867559feb6af5d"
        )
    ]
)
