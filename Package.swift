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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.14/AuthMe.xcframework.zip",
            checksum: "c651731860d96daccc0e675134460454ff49b71b5c20d077980fd9741db261b7"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.14/AuthMeUI.xcframework.zip",
            checksum: "da773b6fdb87271b5d96cb8cca7abe3e21991552d299ff3576bde453722bb924"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.30/Algo.xcframework.zip",
            checksum: "cba6fa835b7fd995a4bbb5f5b9b2580a7c97efb650f60d991d8fe48f19daea62"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.10/AuthmeNFCKit.xcframework.zip",
            checksum: "b2bf9f7fc731ce7dca38d7247fb608c1829997ba88dc9b1606c07e9fe51c59e7"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.30/OpenSSL.xcframework.zip",
            checksum: "7014e2d33985cc67eabe1044abefc568b4f4a4c77edc6ac452da09fbc03faed8"
        )
    ]
)
