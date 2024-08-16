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
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.4.0")
    ],
    targets: [
        .target(
            name: "AuthMeSPM",
            dependencies: [.productItem(name: "Lottie", package: "lottie-spm")]),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.23/AuthMe.xcframework.zip",
            checksum: "37a6c2ca742cb7647e7dc86c2f3303363e45f075d1705fdc765dea764f7efbee"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.23/AuthMeUI.xcframework.zip",
            checksum: "b4a480f04cbe98aa8b919656f84bac5e1d58d86c8ca2afcc4c9b6ea4dd39cb3f"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.13/Algo.xcframework.zip",
            checksum: "fa6088a6cbf6850691a1b6760ac6a842e52bde0ac895a7bab694bc61cc7ed2b1"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.14/AuthmeNFCKit.xcframework.zip",
            checksum: "45626c6794cc026d7fd45c2b645bde7c994edf0385117e60cce2db199176c3a9"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.13/OpenSSL.xcframework.zip",
            checksum: "2ab6538d57d5dacfa122117f3356fac40944124f639dab751a23d4ec790a05c3"
        ),
    ]
)
