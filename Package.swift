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
                "AuthmeNFCKit"
            ]),
    ],
    targets: [
        .target(
            name: "AuthMeSPM"
        ),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.2.3/AuthMe.xcframework.zip",
            checksum: "5eb53692cd123eb05674b5f53bd66fd6db83613d3d6ce5916eaae4e396e65ee7"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.2.3/AuthMeUI.xcframework.zip",
            checksum: "2ff611c66ba04aae9ee281e4c0b0b9700a271644b90a9c5324810b19ac729f1e"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.16/Algo.xcframework.zip",
            checksum: "d123132cbf8907ae418e0a92aba3e6c47a9e2b12659f9d6649d482dd4e6901ca"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/0.1.5/AuthmeNFCKit.xcframework.zip",
            checksum: "b24fd2313723504caaea1435f5dec7d37d6a6ade066af232846583627e04bfed"
        )
    ]
)
