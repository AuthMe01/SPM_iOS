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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.33/AuthMe.xcframework.zip",
            checksum: "77ee565e0fdc87448eee1ed55d9c8e87edcd316bb0a96792ee8d61c3cb8a7e94"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.33/AuthMeUI.xcframework.zip",
            checksum: "4911e3adb86a5ea8b09f81226906c7525439d141eb5579f6979b2abfd7883052"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.5/Algo.xcframework.zip",
            checksum: "7c6309c0b6aa713b69544e79d6217b9418be0497e5ce686086c01ca122882031"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.5/OpenSSL.xcframework.zip",
            checksum: "479a64e7291f6f6913b9b2dfaf0dc99c81dbf48b38697cc67c07878181d282d6"
        )
    ]
)
