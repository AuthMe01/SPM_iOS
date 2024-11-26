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
                "AuthmeNFCKit"
            ]),
    ],
    targets: [
        .target(
            name: "AuthMeSPM"
        ),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.2.4/AuthMe.xcframework.zip",
            checksum: "31182a62231f81c7ce0837f2ba6167726f29a555066ef1a23bc32525fc793b62"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.2.4/AuthMeUI.xcframework.zip",
            checksum: "0aca3414e93081b13f7d0c8a4bd42ce4ca9025f8f28dc97ec664433cb064b329"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.19/Algo.xcframework.zip",
            checksum: "8f84986b6f9ba74bfdad12261efca1a9c4628fbe27a27ded5b13d1c898d9db21"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/0.1.8/AuthmeNFCKit.xcframework.zip",
            checksum: "15d6f931d3887adc44bfa3444749b360bb959bd8060b323d54f472b24e794773"
        )
    ]
)
