import PackageDescription

let package = Package(
    name: "ZewoPress",
    dependencies: [
        .Package(url: "https://github.com/Zewo/HTTPServer.git", majorVersion: 0),
    ]
)
