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
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.26/AuthMe.xcframework.zip",
            checksum: "cbaab0dd05a4e6e2226d3469008dc9794a88c08db9dc03103105789032a13d1b"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.7.26/AuthMeUI.xcframework.zip",
            checksum: "1ad815221c8b0e813b50d0f9419d783b02a026c4d32509e8f52fe9c71acdda80"
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
