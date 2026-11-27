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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.34/AuthMe.xcframework.zip",
            checksum: "c178cf8ed27170257ad1cfb25b1563c703e4c343e9598e12a288b8b0581567dc"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.34/AuthMeUI.xcframework.zip",
            checksum: "3e683bc2176aa2acae7193fe65dd5e2b014b11e060659429c85a27ed7ae935e7"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.35/Algo.xcframework.zip",
            checksum: "355ddb2b565b0dd83d5ed835e11598b39b9ebce4c0001cad5fd5805c2b0ef225"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.13/AuthmeNFCKit.xcframework.zip",
            checksum: "9e84412b72f7acefb5735e3f92cbf75958d403183047757d0d403f6be378c454"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.35/OpenSSL.xcframework.zip",
            checksum: "7553468103dc39ec4a0270be5142fab82af467b0ef299d9bb536b7f52553553b"
        )
    ]
)
