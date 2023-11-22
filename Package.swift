// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BCCFaceDependencies",
    defaultLocalization: "pt",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BCCFaceDependencies",
            targets: ["BCCFaceDependencies"]),
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git",
                 from: "10.4.0"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", branch: "master"),
        //.package(url: "https://github.com/d-date/google-mlkit-swiftpm", branch: "main"),
        .package(url: "https://github.com/apple/swift-protobuf.git", branch: "main")
    ],
    targets: [
        .target(
            name: "BCCFaceDependencies",
            dependencies: [
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
                .product(name: "Lottie", package: "lottie-ios"),
                //.product(name: "MLKitCommon", package: "google-mlkit-swiftpm"),
                //.product(name: "MLKitBarcodeScanning", package: "google-mlkit-swiftpm"),
                //.product(name: "MLKitFaceDetection", package: "google-mlkit-swiftpm"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
        ]),
        .testTarget(
            name: "BCCFaceDependenciesTests",
            dependencies: ["BCCFaceDependencies"]
        )
    ]
)
