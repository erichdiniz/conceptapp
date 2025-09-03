//
//  OnboardingAssembly.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//
import Foundation
import SwiftUI

struct OnboardingModule {
    let view: AnyView
    let router: OnboardingRouter
}

struct OnboardingAssembly {
    func makeModule(resolver: Resolver) -> OnboardingModule {
        let loadPages = LoadOnboardingPagesUseCase(repository: resolver.onboardingRepository)
        let markSeen = MarkOnboardingSeenUseCase(repository: resolver.onboardingRepository)
        
        let interactor = OnboardingInteractor(markSeen: markSeen, loadPages: loadPages)
        let router = OnboardingRouter()
        let presenter = OnboardingPresenter(interactor: interactor, router: router)
        let view = OnboardingView(presenter: presenter)

        return OnboardingModule(view: AnyView(view), router: router)
    }
}
