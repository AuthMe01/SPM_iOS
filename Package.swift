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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.31/AuthMe.xcframework.zip",
            checksum: "72714d362edee537a15a6f85642c551ec8ebc46400187bf11580eb09476e8c9d"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.31/AuthMeUI.xcframework.zip",
            checksum: "dfb9ff4c3d1711e3ea2ad30c56dcca027c038e060ff03d90b9609285ea49454a"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.34/Algo.xcframework.zip",
            checksum: "ddbde5a7dc1e7d3f1197441007e4676f5127f29e4abe7d46b47da9bfc7b786da"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.13/AuthmeNFCKit.xcframework.zip",
            checksum: "9e84412b72f7acefb5735e3f92cbf75958d403183047757d0d403f6be378c454"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.34/OpenSSL.xcframework.zip",
            checksum: "258716c065d73672ced254999be2296ea9d0ac6e8565a7ad768eeb99f92fd9e6"
        )
    ]
)
