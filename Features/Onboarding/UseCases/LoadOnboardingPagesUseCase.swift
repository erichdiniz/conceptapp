//  LoadOnboardingPagesUseCase.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//
protocol LoadOnboardingPagesUseCaseProtocol {
    func execute() -> [OnboardingPage]
}

struct LoadOnboardingPagesUseCase: LoadOnboardingPagesUseCaseProtocol {
    let repository: OnboardingRepositoryProtocol

    init(repository: OnboardingRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute() -> [OnboardingPage] {
        return repository.fetchPages()
    }
}
