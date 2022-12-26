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
                "onnxruntime",
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
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.2.4/AuthMe.xcframework.zip",
            checksum: "a5464e88f9eaa7e4e2adb7a14bb39776fb3655c5f4bd3258df86a50d37c0485a"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.2.4/AuthMeUI.xcframework.zip",
            checksum: "341ea0df999ab438b3518ab510df61912d68e285116bc1541bf4b73778eec94d"
        ),
        .binaryTarget(
            name: "onnxruntime",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.2.4/onnxruntime.xcframework.zip",
            checksum: "c3ec0a200062bf8e388a94b5200561812731425580ac83529e218016a9e1af5a"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/2.2.4/OpenSSL.xcframework.zip",
            checksum: "cf1d5849465b111c8db4e1c432b096e8051c3cf018b673c9a3422715fa8abb71"
        ),
    ]
)
