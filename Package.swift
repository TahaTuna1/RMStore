// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "RMStore",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "RMStore", targets: ["RMStore"])
    ],
    targets: [
        .target(
            name: "RMStore",
            path: "RMStore",
            exclude: [
                "Optional/AppleIncRootCertificate.cer",
                "Optional/RMAppReceipt.h",
                "Optional/RMAppReceipt.m",
                "Optional/RMStoreAppReceiptVerifier.h",
                "Optional/RMStoreAppReceiptVerifier.m",
                "Optional/RMStoreTransactionReceiptVerifier.h",
                "Optional/RMStoreTransactionReceiptVerifier.m",
                "Optional/openssl-1.0.1e"
            ],
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedFramework("StoreKit"),
                .linkedFramework("Security")
            ]
        )
    ]
)
