// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ThirdPartyManager",
  platforms: [.iOS(.v14)],
  products: [
    .library(
      name: "ThirdPartyManager",
      type: .dynamic,
      targets: ["ThirdPartyManager"]
    ),
    .library(
      name: "TestResolver",
      targets: ["TestResolver"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", exact: "6.5.0")
  ],
  targets: [
    .target(
      name: "ThirdPartyManager",
      dependencies: [
        .product(name: "RxSwift", package: "Rxswift"),
        .product(name: "RxCocoa", package: "Rxswift")
      ]
    ),
    .target(
      name: "TestResolver",
      dependencies: [
        .product(name: "RxTest", package: "Rxswift"),
        .product(name: "RxBlocking", package: "Rxswift")
      ]
    ),
    .testTarget(
      name: "ThirdPartyManagerTests",
      dependencies: ["ThirdPartyManager"]),
  ]
)
