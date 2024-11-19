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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.2.0/AuthMe.xcframework.zip",
            checksum: "0140d26016467d34bf72ee36fec6304794db79b2bfe7edbe67eca9a39ff3a928"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/0.2.0/AuthMeUI.xcframework.zip",
            checksum: "e5f5644e2f71c1e366c681c4c829987209d3570ea355043f85a8c019e9da7785"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/8.7.16/Algo.xcframework.zip",
            checksum: "d123132cbf8907ae418e0a92aba3e6c47a9e2b12659f9d6649d482dd4e6901ca"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/0.1.2/AuthmeNFCKit.xcframework.zip",
            checksum: "bc67e76bafda146fb44101b0f285a7730722ba63c34322c8d2bbbda8aabad7e2"
        )
    ]
)
