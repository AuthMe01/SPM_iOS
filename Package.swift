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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.12/AuthMe.xcframework.zip",
            checksum: "d8fe717b4712ddffbab743e77fd249868b081e532bc8f52e8ed6ad8c1f52fc6e"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.12/AuthMeUI.xcframework.zip",
            checksum: "9a50f7a6f51dd7e01c2ebaea8ff085258d6ab28eb77c19b6e0e9f270691e9780"
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
