//
//  OnboardingBuilder.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 30/08/25.
//

struct OnboardingPageBuilder {
    var title = "Title"
    var subtitle = "Subtitle"
    func build() -> OnboardingPage { OnboardingPage(title: title, subtitle: subtitle) }
    static func many(_ n: Int) -> [OnboardingPage] {
        (0..<n).map { OnboardingPage(title: "T\($0)", subtitle: "S\($0)") }
    }
}
