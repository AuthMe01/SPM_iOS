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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.34/AuthMe.xcframework.zip",
            checksum: "3c035a01325cbe4c9f4775ba9c980dfaeb89a31e1d2aaab512e8f73a7405333c"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.34/AuthMeUI.xcframework.zip",
            checksum: "8cc023b8f930324ea64332af476a8de13153612d41230e456ec65faec17a389c"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.15/Algo.xcframework.zip",
            checksum: "18b21b3630dacc4fabe5e7cd185f597c2d7f8ee56b438dcc26f545c80cb2cddf"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.16/AuthmeNFCKit.xcframework.zip",
            checksum: "699896b501b3bc3a3f6cba5c69ac1e4cd528d58ea415d5c7a0fbbd8579faa0da"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.15/OpenSSL.xcframework.zip",
            checksum: "31497f759ba6b75330bc234a00fdf2083073967368a2c958f8b5b987dd51011a"
        )
    ]
)
