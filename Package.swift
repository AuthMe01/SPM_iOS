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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.0.2/AuthMe.xcframework.zip",
            checksum: "fe38a981e6af4b05f206ac41a792b3b6305f2fbb433a448b1e50f9592f869266"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.0.2/AuthMeUI.xcframework.zip",
            checksum: "7ce25130b95a85765e40042b5ac39ead1d402ddf261fd4b566d2701c5c6c8d85"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/0.0.1/Algo.xcframework.zip",
            checksum: "aaad37baeedcdb4f910b1187b0b4b1aa5e83e33cda2207d9032aa24138a2f521"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/0.0.1/OpenSSL.xcframework.zip",
            checksum: "c6660d326720208496be9450e458a4ac52eb0f91594bfebe76276f6c00074c7e"
        )
    ]
)
