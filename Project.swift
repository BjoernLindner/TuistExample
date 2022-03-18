import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project

let project = Project(
    name: "TuistExample",
    options: .options(),
    targets: [
        Target(
            name: "WatchApp",
            platform: .watchOS,
            product: .watch2App,
            bundleId: "com.tuistexample.watchkitapp",
            infoPlist: .default,
            dependencies: [
                .target(name: "WatchAppExtension")
            ]
        ),
        Target(
            name: "WatchAppExtension",
            platform: .watchOS,
            product: .watch2Extension,
            bundleId: "com.tuistexample.watchkitapp.extension",
            infoPlist: .default,
            dependencies: [
                .external(name: "Resolver")
            ]
        ),
        Target(
            name: "iOS",
            platform: .iOS,
            product: .app,
            bundleId: "com.tuistexample",
            infoPlist: .default,
            dependencies: [
                .target(name: "WatchApp"),
                .external(name: "Resolver")
            ]
        )
    ],
    schemes: [],
    additionalFiles: [],
    resourceSynthesizers: []
)
