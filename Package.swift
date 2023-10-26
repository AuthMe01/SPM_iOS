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
            checksum: "c323e3bb0a2a656c582a07e2fd1689d4daabb8208ff2272550379619f543a593"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/AuthMeUI.xcframework.zip",
            checksum: "50fb9a7d77745b041647f78a7ceb5dea98e4d9e35483ab0a2aef9b20d7d6047a"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/Algo.xcframework.zip",
            checksum: "13bd74570f18713f2434e14414a260c2a55d559c48962f206abc395d68bf4955"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.4.6/OpenSSL.xcframework.zip",
            checksum: "cf1d5849465b111c8db4e1c432b096e8051c3cf018b673c9a3422715fa8abb71"
        ),
    ]
)
