//  OnboardingInteractor.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//
import Foundation

private let onboardingSeenKey = "onboarding_seen"

protocol OnboardingLocalDataSourceProtocol {
    func fetchPages() -> [OnboardingPage]
    func markSeen()
}

final class DefaultOnboardingLocalDataSource: OnboardingLocalDataSourceProtocol {
    private let store: KeyValueStoringProtocol
    init(store: KeyValueStoringProtocol) { self.store = store }

    func fetchPages() -> [OnboardingPage] {
        // Stubbed static data for now (replace with resource/config later)
        return [
            OnboardingPage(title: "Welcome", subtitle: "Thanks for trying ConceptApp"),
            OnboardingPage(title: "Secure", subtitle: "Your data stays yours")
        ]
    }

    func markSeen() {
        store.set(true, forKey: onboardingSeenKey)
    }
}
