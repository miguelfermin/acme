// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AcmeKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
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
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        
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
            ]),
        
        // MARK: - Specific modules
        .target(name: "AcmeAccount", dependencies: []),
        .target(name: "AcmePlans", dependencies: []),
        .target(name: "AcmeClaims", dependencies: []),
        .target(name: "AcmeBilling", dependencies: []),
        .target(name: "AcmeSupport", dependencies: []),
        
        // MARK: - Plugin interface module
        .target(name: "AcmePlugins", dependencies: []),
        
        // MARK: - Generic modules
        .target(name: "AcmeUI", dependencies: []),
        .target(name: "AcmeCore", dependencies: []),
        
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
