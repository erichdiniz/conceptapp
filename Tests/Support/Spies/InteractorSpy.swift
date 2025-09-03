//
//  InteractorSpy.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 02/09/25.
//

final class InteractorSpy: OnboardingInteractorProtocol {
    private let stubPages: [OnboardingPage]
    private(set) var didMarkSeen = false
    init(pages: [OnboardingPage]) { self.stubPages = pages }
    func loadPages(_ completion: @escaping ([OnboardingPage]) -> Void) { completion(stubPages) }
    func markSeen() { didMarkSeen = true }
}
