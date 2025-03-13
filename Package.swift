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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.8/AuthMe.xcframework.zip",
            checksum: "ab18bdab9a0a1a1908452a1acb880cf2aebeb2fc7f89fa8b224aff4d6ef2c2a6"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.8/AuthMeUI.xcframework.zip",
            checksum: "b71c99f784d81bda6cc617a6848d92e0ebbc7754375da94ae31c7cec58de8b31"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.2/Algo.xcframework.zip",
            checksum: "05b95f81a366170f8b64919b9d69392605fde27f89d1ac1b64c51e612730e93a"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.2/OpenSSL.xcframework.zip",
            checksum: "1df099ecb9426d39297c05570366eed8badce908e5dda16e3b0049b601b9dbff"
        )
    ]
)
