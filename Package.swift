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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.49/AuthMe.xcframework.zip",
            checksum: "0969b94edc340909dc254a9b33f1d31a2056e0dfe5fd096526cf83aa90f68418"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.49/AuthMeUI.xcframework.zip",
            checksum: "afad73f097f457ebd480952ce9fecc37877faa02c7d713f3f4f029ed1f85b65b"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.13/Algo.xcframework.zip",
            checksum: "26d638bb683b8402cd0fe4860c9ae6b96a25760ff1ccf62f8cd3fcb59039e95b"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.19/AuthmeNFCKit.xcframework.zip",
            checksum: "dc50cddceb396782711e02162f36a3d3cc3264323f360d26bdb0590134f3db7f"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.13/OpenSSL.xcframework.zip",
            checksum: "d9001529a81294a14dfc8ef4c365b1b16d9064cb1981689a7754b15ac4070892"
        )
    ]
)
