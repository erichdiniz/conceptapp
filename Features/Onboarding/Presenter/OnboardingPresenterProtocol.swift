//  OnboardingInteractor.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

protocol OnboardingPresenterProtocol {
    func onAppear()
    func onSkip()
    func onNext()
    func attach(view: OnboardingViewRenderable)
}
