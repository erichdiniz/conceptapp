//  OnboardingInteractor.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

protocol OnboardingInteractorProtocol {
    func loadPages(_ completion: @escaping([OnboardingPage]) -> Void)
    func markSeen()
    func determineAuthEntry() -> AuthEntry

}
