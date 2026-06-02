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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.20/AuthMe.xcframework.zip",
            checksum: "fac201ed45733421a7a5ee4d040b0334241b91521429c8cab8d9dc2a5382b88a"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.9.20/AuthMeUI.xcframework.zip",
            checksum: "3efd6497cec94f799e7d1b532bfaa357dadbf4e95f391d679749322ef4296c36"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.32/Algo.xcframework.zip",
            checksum: "ba655036513026d8808993472304f705501eaa6a06942f1c9c4c318a9b2ebe51"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/2.0.10/AuthmeNFCKit.xcframework.zip",
            checksum: "1e98264f1ca1875890503c9bee30a1b434fb885a4aa1fd393492c1c9003ccbc5"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.32/OpenSSL.xcframework.zip",
            checksum: "debaf649db38e7c5c2d2f5ef72ab5fbb327fa399e6691d11a5dcec886b3ce38f"
        )
    ]
)
