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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.33/AuthMe.xcframework.zip",
            checksum: "426dab8e8265578167734828a656472766ec75267e8d9d61cb6d5a688dbd41f3"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.33/AuthMeUI.xcframework.zip",
            checksum: "d453b941b65faea29cc80d1d634be3b6e2052c34951e4ab5fec61e6bbf0ca2f5"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.34/Algo.xcframework.zip",
            checksum: "ddbde5a7dc1e7d3f1197441007e4676f5127f29e4abe7d46b47da9bfc7b786da"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.14/AuthmeNFCKit.xcframework.zip",
            checksum: "487b854dba01c7bb0f09e636121c608a3b133db089f8cda1d62ddacdf2057414"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.34/OpenSSL.xcframework.zip",
            checksum: "258716c065d73672ced254999be2296ea9d0ac6e8565a7ad768eeb99f92fd9e6"
        )
    ]
)
