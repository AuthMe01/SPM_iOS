// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AuthMeSPM",
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
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.3.3")
    ],
    targets: [
        .target(
            name: "AuthMeSPM",
            dependencies: [.productItem(name: "Lottie", package: "lottie-spm")]),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.1-rc7/AuthMe.xcframework.zip",
            checksum: "64b7235575eb80ef1b34c36411881592d77e6231088bc59a3f021c87b7c668e8"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.1-rc7/AuthMeUI.xcframework.zip",
            checksum: "1ce2f517c212a296c6ea4c8272bdb6235ae425519e74dfa3ed2e8093e7ab0506"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.1-rc7/Algo.xcframework.zip",
            checksum: "40fa4dc531af3d259f292d1c5d5d6835c691231e40bc2e5df9cb14077ec75cd5"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.1-rc7/AuthmeNFCKit.xcframework.zip",
            checksum: "b3d32274065999ef7f5d62731df8bf4b4268cd30aa9a677a7fc3ffa4b89f30cd"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.6.1-rc7/OpenSSL.xcframework.zip",
            checksum: "5e706b55e0a6a9ee1475c51259972545a822d45f277c8db0fca3ce710f98dc36"
        ),
    ]
)
