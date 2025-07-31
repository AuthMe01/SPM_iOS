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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.37/AuthMe.xcframework.zip",
            checksum: "947a3997db4ebb01fb5350c93c6cac82dd57bdebc333ff9903170bacb90a1792"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.37/AuthMeUI.xcframework.zip",
            checksum: "abca4a4926743004d0fc12756d78e747334e8c81b32d651c2843e1e7ac5a21fb"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.9/Algo.xcframework.zip",
            checksum: "8a6860956f4c4fb96d8fc624b4b74868d1de36c54701c8ef8d09f03b2c9e5c4a"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.9/OpenSSL.xcframework.zip",
            checksum: "aa48ff9157c5dbd78fc1cd7bc1f6af04dc6c324eca9ac6569d853a3e587fb175"
        )
    ]
)
