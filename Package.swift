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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.38/AuthMe.xcframework.zip",
            checksum: "384aff953dc266f195c674c2f7bd04efb96c902c5488230eabe20c68e85c56ae"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/core/2.8.38/AuthMeUI.xcframework.zip",
            checksum: "78d45beba002f263a5fac446f0bb9be5e14a7b9db5969d5df4e8499d4268e742"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.9/Algo.xcframework.zip",
            checksum: "8a6860956f4c4fb96d8fc624b4b74868d1de36c54701c8ef8d09f03b2c9e5c4a"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/nfc/1.0.18/AuthmeNFCKit.xcframework.zip",
            checksum: "fce2f614416a9ade59a1936bad6daae964c2230bbb1ca1cdec8b7bff0f5042a6"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/algo/9.0.9/OpenSSL.xcframework.zip",
            checksum: "aa48ff9157c5dbd78fc1cd7bc1f6af04dc6c324eca9ac6569d853a3e587fb175"
        )
    ]
)
