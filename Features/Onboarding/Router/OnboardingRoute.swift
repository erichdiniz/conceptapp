//  OnboardingInteractor.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//
protocol OnboardingRouterProtocol{
    func navigate(to route: OnboardingRoute)
}
enum OnboardingRoute: Equatable {
    case login, register, skip, home, learnMore
}
