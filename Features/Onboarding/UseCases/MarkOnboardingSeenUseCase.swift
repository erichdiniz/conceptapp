
//  MarkOnboardingSeenUseCase.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

protocol MarkOnboardingSeenUseCaseProtocol {
    func execute()
}

struct MarkOnboardingSeenUseCase: MarkOnboardingSeenUseCaseProtocol {
    let repository: OnboardingRepositoryProtocol

    init(repository: OnboardingRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute() {
        repository.markSeen()
    }
}
