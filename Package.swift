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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.13/AuthMe.xcframework.zip",
            checksum: "3a08043fe084b8eccb7c768caf22cc3af5137f1c10059c99c04d45f915e47469"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.13/AuthMeUI.xcframework.zip",
            checksum: "9b29d1b76158ec81e3d1930aaf12e1e7578f07fb0d472455353332a217327751"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.29/Algo.xcframework.zip",
            checksum: "68e80ca714d1925473c4c648c86c5b82c94f7d80c4a1efb3e5a1e6d78309d72c"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.9/AuthmeNFCKit.xcframework.zip",
            checksum: "3f0f9dfeb370ca90447ec28a87c4a795df58172b056f54c9e7927153b99e225c"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.29/OpenSSL.xcframework.zip",
            checksum: "72042cfc252fb314e1d3368e51fcda3df9f0a07f6e6159e6ef9d7be25dc5f6f3"
        )
    ]
)
