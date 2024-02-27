#!/bin/bash

version="$1"
checksum_core="$2"
checksum_ui="$3"
checksum_algo="$4"
checksum_nfc="$5"
checksum_openssl="$6"

cat <<EOF > Package.swift
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
                "AuthmeNFCKit",
                "OpenSSL"
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.3.3")
    ],
    targets: [
        .target(
            name: "AuthMeSPM",
            dependencies: [.productItem(name: "Lottie", package: "lottie-spm")]),
        .binaryTarget(
            name: "AuthMe",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/$version/AuthMe.xcframework.zip",
            checksum: "$checksum_core"
        ),
        .binaryTarget(
            name: "AuthMeUI",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/$version/AuthMeUI.xcframework.zip",
            checksum: "$checksum_ui"
        ),
        .binaryTarget(
            name: "Algo",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/$version/Algo.xcframework.zip",
            checksum: "$checksum_algo"
        ),
        .binaryTarget(
            name: "AuthmeNFCKit",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/$version/AuthmeNFCKit.xcframework.zip",
            checksum: "$checksum_nfc"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://storage.googleapis.com/authme-mobile.appspot.com/iOS/$version/OpenSSL.xcframework.zip",
            checksum: "$checksum_openssl"
        ),
    ]
)
EOF
