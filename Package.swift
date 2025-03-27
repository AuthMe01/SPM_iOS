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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.16/AuthMe.xcframework.zip",
            checksum: "f311d328dbdc4735c6cdb43f5df7f90d11441186cd9dacde442bbe746161c9a0"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.16/AuthMeUI.xcframework.zip",
            checksum: "7011dbda22e32175b26ba4c1cf6b7953c75a7ce9c888d478a90407af72b6fbce"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.4/Algo.xcframework.zip",
            checksum: "2ef6e859ee895469add2c535c2c912295d9c2881e9e277af810bb905bfb0ae7f"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.4/OpenSSL.xcframework.zip",
            checksum: "efd5a562c7e78055e09173ba7f91f21a2f96638ec348f6df069438c7da094afb"
        )
    ]
)
