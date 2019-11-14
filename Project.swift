import ProjectDescription

let project = Project(name: "tuist-circular-dependency-example",
                      targets: [
                        Target(name: "tuist-circular-dependency-example",
                               platform: .iOS,
                               product: .app,
                               bundleId: "io.tuist.tuist-circular-dependency-example",
                               infoPlist: "Info.plist",
                               sources: ["Sources/**"],
                               resources: [
                                       /* Path to resouces can be defined here */
                                       // "Resources/**"
                               ],
                               dependencies: [
                                    /* Target dependencies can be defined here */
                                    // .framework(path: "Frameworks/MyFramework.framework")
                                ]),
                        Target(name: "tuist-circular-dependency-exampleTests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "io.tuist.tuist-circular-dependency-exampleTests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "tuist-circular-dependency-example")
                               ])
                      ])