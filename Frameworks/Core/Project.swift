import ProjectDescription

func makeEmptyBase() -> [String: String] {
    return [:]
}

let project = Project(name: "Core",
                      targets: [
                          Target(name: "Core",
                                 platform: .iOS,
                                 product: .framework,
                                 bundleId: "com.example.core",
                                 infoPlist: "Core.plist",
                                 sources: [SourceFileGlob("Sources/**/")],
                                 headers: Headers(public: ["Sources/**"]),
                                 dependencies: []),
                          Target(name: "CoreTests",
                                 platform: .iOS,
                                 product: .unitTests,
                                 bundleId: "com.example.core",
                                 infoPlist: "CoreTests.plist",
                                 sources: "Tests/**",
                                 dependencies: [
                                     .project(target: "Testing", path: "../Testing")
                                 ])
                      ])
