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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.42/AuthMe.xcframework.zip",
            checksum: "80394b60172bbcf0812e3e8d31dbec18c14d6bca017b68f6abf38585b7396c66"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.42/AuthMeUI.xcframework.zip",
            checksum: "799eeb37a3c72b88ba4cffcd3f42d45c0d56835a69667919a25d383341b15927"
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
