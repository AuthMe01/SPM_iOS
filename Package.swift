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
                "OpenSSL"
            ]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "AuthMeSPM",
            dependencies: []),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/AuthMe.xcframework.zip",
            checksum: "292d2705db02bde0f5438797c8cb7b097e6785785d9ed555186b2f4338e03f5f"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/AuthMeUI.xcframework.zip",
            checksum: "3cde1d39cdca6ada53d351c5ef515b147301f8412a2d7c405fd33d4ad175e6a0"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/Algo.xcframework.zip",
            checksum: "4caa724b2d15af56f6d65671df47e28adfe982206205a62889d5ffd68423c2eb"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/OpenSSL.xcframework.zip",
            checksum: "402ddb53a920d584f41ed402d2f032f9df12f04997e5633eb8bd944c16344a0d"
        ),
    ]
)
