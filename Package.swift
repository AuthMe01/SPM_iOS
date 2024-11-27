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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.39/AuthMe.xcframework.zip",
            checksum: "e5e7c59ff3cf1db11523f84bbb1b29d133dd3f18fd2226c7c62aa5276ebd2df6"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.39/AuthMeUI.xcframework.zip",
            checksum: "4c70962f4da8466d79bab8413168bcebf45f5c91a81a14edb2d9839f9df872af"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.19/Algo.xcframework.zip",
            checksum: "8f84986b6f9ba74bfdad12261efca1a9c4628fbe27a27ded5b13d1c898d9db21"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.19/OpenSSL.xcframework.zip",
            checksum: "e7c42da6a2e1e57fc0112c8676e6f351e45cf0a017fd85679b045725f4ffb137"
        )
    ]
)
