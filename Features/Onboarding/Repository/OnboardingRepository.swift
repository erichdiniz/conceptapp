//  OnboardingInteractor.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

final class DefaultOnboardingRepository: OnboardingRepositoryProtocol {
    private let local: OnboardingLocalDataSourceProtocol

    init(local: OnboardingLocalDataSourceProtocol) { self.local = local }

    func fetchPages() -> [OnboardingPage] {
        local.fetchPages()
    }

    func markSeen() {
        local.markSeen()
    }
}
