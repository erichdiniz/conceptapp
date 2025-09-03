//  OnboardingInteractorTests.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

// Interactor tests

import XCTest

final class OnboardingInteractorTests: XCTestCase {

    func test_loadPages_returnsPages() {
        // Given stubs
        let pages = [OnboardingPage(title: "T1", subtitle: "S1")]
        let loadStub = LoadPagesStub(result: pages)
        let markStub = MarkSeenStub()
        let sut = OnboardingInteractor(markSeen: markStub, loadPages: loadStub)

        // When
        var received: [OnboardingPage] = []
        sut.loadPages { received = $0 }

        // Then
        XCTAssertEqual(received, pages)
    }

    func test_markSeen_executesUseCase() {
        // Given stubs
        let loadStub = LoadPagesStub(result: [])
        let markStub = MarkSeenStub()
        let sut = OnboardingInteractor(markSeen: markStub, loadPages: loadStub)

        // When
        sut.markSeen()

        // Then
        XCTAssertTrue(markStub.didExecute)
    }
}

// MARK: - Test Doubles

private final class LoadPagesStub: LoadOnboardingPagesUseCaseProtocol {
    private let result: [OnboardingPage]
    init(result: [OnboardingPage]) { self.result = result }
    func execute() -> [OnboardingPage] { result }
}

private final class MarkSeenStub: MarkOnboardingSeenUseCaseProtocol {
    private(set) var didExecute = false
    func execute() { didExecute = true }
}
