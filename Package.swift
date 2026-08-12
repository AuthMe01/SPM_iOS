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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.27/AuthMe.xcframework.zip",
            checksum: "781f21b3a9a28c3b89e8945a6cf06efe0051b3dbabc5b6085cd026ef7f61973b"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.27/AuthMeUI.xcframework.zip",
            checksum: "1d40ac9c1cf642de2cbc3309f6004a5360e72c54874943d1839e5f2a7a4f170d"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.32/Algo.xcframework.zip",
            checksum: "ba655036513026d8808993472304f705501eaa6a06942f1c9c4c318a9b2ebe51"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.11/AuthmeNFCKit.xcframework.zip",
            checksum: "76cf52b04cc6d275aa9b6b43b0ff5ef8ada8c1a89a363e2e7307f3f5c006e261"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.32/OpenSSL.xcframework.zip",
            checksum: "debaf649db38e7c5c2d2f5ef72ab5fbb327fa399e6691d11a5dcec886b3ce38f"
        )
    ]
)
