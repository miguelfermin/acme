// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let excludedFilenames = ["README.md"]

let package = Package(
    name: "AcmeKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "AcmeKit", targets: ["AcmeKit"]),
        
        .library(name: "AcmeAccount", targets: ["AcmeAccount"]),
        .library(name: "AcmePlans", targets: ["AcmePlans"]),
        .library(name: "AcmeClaims", targets: ["AcmeClaims"]),
        .library(name: "AcmeBilling", targets: ["AcmeBilling"]),
        .library(name: "AcmeSupport", targets: ["AcmeSupport"]),
        .library(name: "AcmePlugins", targets: ["AcmePlugins"]),
        .library(name: "AcmeUI", targets: ["AcmeUI"]),
        .library(name: "AcmeCore", targets: ["AcmeCore"]),
    ],
    dependencies: [
    ],
    targets: [
        // MARK: - Umbrella module
        .target(
            name: "AcmeKit",
            dependencies: [
                "AcmeAccount",
                "AcmePlans",
                "AcmeClaims",
                "AcmeBilling",
                "AcmeSupport",
                "AcmePlugins",
                "AcmeUI",
                "AcmeCore"
            ],
            exclude: excludedFilenames
        ),
        
        // MARK: - Specific modules
        .target(name: "AcmeAccount", dependencies: ["AcmeUI", "AcmeCore"], exclude: excludedFilenames),
        
        .target(name: "AcmePlans", dependencies: ["AcmeUI", "AcmeCore", "AcmeBilling"], exclude: excludedFilenames),
        
        .target(name: "AcmeClaims", dependencies: ["AcmeUI", "AcmeCore", "AcmePlans", "AcmeAccount"], exclude: excludedFilenames),
        
        .target(name: "AcmeBilling", dependencies: ["AcmeUI", "AcmeCore"], exclude: excludedFilenames),
        
        .target(name: "AcmeSupport", dependencies: ["AcmeUI", "AcmeCore", "AcmePlans"], exclude: excludedFilenames),
        
        // MARK: - Plugin interface module
        .target(name: "AcmePlugins", dependencies: [], exclude: excludedFilenames),
        
        // MARK: - Generic modules
        .target(name: "AcmeUI", dependencies: [], exclude: excludedFilenames),
        .target(name: "AcmeCore", dependencies: [], exclude: excludedFilenames),
        
        // MARK: - Tests
        .testTarget(name: "AcmeAccountTests", dependencies: ["AcmeAccount"]),
        .testTarget(name: "AcmePlansTests", dependencies: ["AcmePlans"]),
        .testTarget(name: "AcmeClaimsTests", dependencies: ["AcmeClaims"]),
        .testTarget(name: "AcmeBillingTests", dependencies: ["AcmeBilling"]),
        .testTarget(name: "AcmeSupportTests", dependencies: ["AcmeSupport"]),
        .testTarget(name: "AcmeUITests", dependencies: ["AcmeUI"]),
        .testTarget(name: "AcmeCoreTests", dependencies: ["AcmeCore"]),
    ]
)
