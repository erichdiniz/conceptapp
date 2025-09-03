//  OnboardingInteractor.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

struct OnboardingInteractor: OnboardingInteractorProtocol {
    func determineAuthEntry() -> AuthEntry {
//        switch AuthEntr {
//        case .login:
//        case .register:
//        default:
//            return .login<#code#>
//        }
        
        return .login
    }
    
    let markSeenUC: MarkOnboardingSeenUseCaseProtocol
    let loadPagesUC: LoadOnboardingPagesUseCaseProtocol
    
    init(markSeen: MarkOnboardingSeenUseCaseProtocol, loadPages: LoadOnboardingPagesUseCaseProtocol) {
        self.markSeenUC = markSeen
        self.loadPagesUC = loadPages
    }
    
    func loadPages(_ completion: @escaping ([OnboardingPage]) -> Void) {
        completion(loadPagesUC.execute())
    }

    func markSeen() {
        markSeenUC.execute()
    }
}
