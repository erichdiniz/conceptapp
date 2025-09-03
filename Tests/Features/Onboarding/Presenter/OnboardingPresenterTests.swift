////  OnboardingInteractor.swift
////  conceptapp
////
////  Created by Snow on 28/08/25.
////
//
//import XCTest
//
//final class OnboardingPresenterTests: XCTestCase {
//
//    func test_onAppear_rendersPages_andStartsAtZero() {
//        // Given
//        let pages = [OnboardingPage(title: "A", subtitle: "B")]
//        let interactor = InteractorSpy(pages: pages)
//        let router = RouterSpy<OnboardingRoute>()
//        let view = ViewSpy<OnboardingRoute>()
//        let sut = OnboardingPresenter(interactor: interactor, router: router)
//        sut.attach(view: view)
//
//        // When
//        sut.onAppear()
//
//        // Then
//        XCTAssertEqual(view.renderedPages, pages)
//        XCTAssertEqual(view.currentIndex, 0)
//        XCTAssertTrue(router.routes.isEmpty)
//    }
//
//    func test_next_onLastPage_routesToLogin() {
//        let interactor = InteractorSpy(pages: [OnboardingPage(title: "A", subtitle: "B")])
//        let router = RouterSpy<OnboardingRoute>()
//        let view = ViewSpy<OnboardingRoute>()
//        let sut = OnboardingPresenter(interactor: interactor, router: router)
//        sut.attach(view: view)
//        sut.onAppear()
//
//        sut.onNext()
//
//        XCTAssertEqual(router.routes, [.login])
//    }
//
//    func test_skip_marksSeen_andRoutesLogin() {
//        let interactor = InteractorSpy(pages: [OnboardingPage(title: "A", subtitle: "B")])
//        let router = RouterSpy<OnboardingRoute>()
//        let view = ViewSpy<OnboardingRoute>()
//        let sut = OnboardingPresenter(interactor: interactor, router: router)
//        sut.attach(view: view)
//
//        sut.onSkip()
//
//        XCTAssertTrue(interactor.didMarkSeen)
//        XCTAssertEqual(router.routes, [.login])
//    }
//}
//
//// MARK: - Spies and protocol shims
//
//
//final class RouterSpy: OnboardingRouterProtocol {
//    private(set) var routes: [OnboardingRoute] = []
//    func navigate(to route: OnboardingRoute) { routes.append(route) }
//}
//
//final class ViewSpy: OnboardingViewRenderable {
//    private(set) var renderedPages: [OnboardingPage] = []
//    private(set) var currentIndex: Int = -1
//    func render(pages: [OnboardingPage], currentIndex: Int) {
//        self.renderedPages = pages
//        self.currentIndex = currentIndex
//    }
//}
