//
//  InMemoryOnboardingRepository.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 30/08/25.
//

final class InMemoryOnboardingRepository: OnboardingRepositoryProtocol {
    var pages: [OnboardingPage]
    private(set) var didMarkSeen = false
    
    init(pages: [OnboardingPage] = []) { self.pages = pages }
    
    func fetchPages() -> [OnboardingPage] { pages }
    
    func markSeen() { didMarkSeen = true }
}
