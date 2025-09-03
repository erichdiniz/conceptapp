//  OnboardingInteractor.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

protocol OnboardingRepositoryProtocol {
    func fetchPages() -> [OnboardingPage]
    func markSeen()
}
