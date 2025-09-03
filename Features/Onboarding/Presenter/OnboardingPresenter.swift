//  OnboardingInteractor.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

final class OnboardingPresenter: OnboardingPresenterProtocol {
    

    
    let interactor: OnboardingInteractorProtocol
    let router: OnboardingRouterProtocol
    private weak var view: OnboardingViewRenderable?

    init(interactor: OnboardingInteractorProtocol, router: OnboardingRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }

    func onAppear() {
        //
    }
    
    func onSkip() {
        switch interactor.determineAuthEntry() {
        case .register:
            router.navigate(to: .register)
        case .login:
            router.navigate(to: .login)
        }
    }
    
    func onNext() {
        router.navigate(to: .learnMore)
    }
    
    func attach(view: any OnboardingViewRenderable) {
        self.view = view
    }
}
