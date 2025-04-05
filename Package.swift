// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v5),
        .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "AlamofireObjectMapper",
            targets: ["AlamofireObjectMapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.1.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.1.0")),
    ],
    targets: [
        .target(
            name: "AlamofireObjectMapper",
            dependencies: ["Alamofire", "ObjectMapper"],
            path: "AlamofireObjectMapper"
        ),
        .testTarget(
            name: "AlamofireObjectMapperTest",
            dependencies: ["AlamofireObjectMapper"],
            path: "AlamofireObjectMapperTests"
        )

    ],
    swiftLanguageVersions: [.v5]
)
