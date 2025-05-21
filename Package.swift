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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.29/AuthMe.xcframework.zip",
            checksum: "50d2f64ef9d12d0d6e7fe772eba8bb3fc14da8f9b1372ba8023024236b6f556b"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.29/AuthMeUI.xcframework.zip",
            checksum: "98f83c6a844a22c34cbbefd850fc9e46fd91e656425d177d73de5cf54f0a4d42"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.5/Algo.xcframework.zip",
            checksum: "7c6309c0b6aa713b69544e79d6217b9418be0497e5ce686086c01ca122882031"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.5/OpenSSL.xcframework.zip",
            checksum: "479a64e7291f6f6913b9b2dfaf0dc99c81dbf48b38697cc67c07878181d282d6"
        )
    ]
)
