import ProjectDescription

func makeEmptyBase() -> [String: String] {
    return [:]
}

let testingSettings = Settings(base: makeEmptyBase())

let project = Project(
    name: "Testing",
    targets: [
        Target(
            name: "Testing",
            platform: .iOS,
            product: .framework,
            bundleId: "com.example.testing",
            infoPlist: "Testing.plist",
            sources: ["Sources/**/"],
            resources: [],
            headers: Headers(public: ["Sources/**"]),
            dependencies: [.project(target: "Core", path: "../Core")],
            settings: testingSettings
        ),
    ],
    schemes: [
        Scheme(
            name: "Testing",
            shared: true,
            buildAction: BuildAction(targets: ["Testing"])
        ),
    ]
)
