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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.19/AuthMe.xcframework.zip",
            checksum: "07960b8a93908e02b288ef89dbee0ba3c3689cd9068cfb37b8a2f9daa678ce5c"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.19/AuthMeUI.xcframework.zip",
            checksum: "8fcb5c536fbf6693f2d4a8e4bff17c2a6fc91c4ecdcf17fd22f037c4cf29633f"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.32/Algo.xcframework.zip",
            checksum: "ba655036513026d8808993472304f705501eaa6a06942f1c9c4c318a9b2ebe51"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.10/AuthmeNFCKit.xcframework.zip",
            checksum: "1e98264f1ca1875890503c9bee30a1b434fb885a4aa1fd393492c1c9003ccbc5"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.32/OpenSSL.xcframework.zip",
            checksum: "debaf649db38e7c5c2d2f5ef72ab5fbb327fa399e6691d11a5dcec886b3ce38f"
        )
    ]
)
