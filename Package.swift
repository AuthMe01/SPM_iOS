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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.30/AuthMe.xcframework.zip",
            checksum: "e6c7e562363d53aa5a32ce4ad55740babbf62b12d7d67745318ce4b5d58107af"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.30/AuthMeUI.xcframework.zip",
            checksum: "6abbdb668e3189f9efc35f6e98228d9b29f9731048ce0b64e585c518a0fb2ffe"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.13/Algo.xcframework.zip",
            checksum: "fa6088a6cbf6850691a1b6760ac6a842e52bde0ac895a7bab694bc61cc7ed2b1"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.15/AuthmeNFCKit.xcframework.zip",
            checksum: "0e5d3afe5b18b59ace7513c9ae72871bb5eed5cdcd88f72a19b8d8cc28e18e5e"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.13/OpenSSL.xcframework.zip",
            checksum: "2ab6538d57d5dacfa122117f3356fac40944124f639dab751a23d4ec790a05c3"
        )
    ]
)
