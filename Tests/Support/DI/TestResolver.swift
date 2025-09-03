//
//  DIResolver.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 30/08/25.
//

import Foundation

final class TestResolver: Resolver {
    let userDefaults: KeyValueStoringProtocol
    let onboardingRepository: OnboardingRepositoryProtocol
    
    init(onboardingRepository: OnboardingRepositoryProtocol = InMemoryOnboardingRepository(), userDefaults: KeyValueStoringProtocol = UserDefaults.standard as! KeyValueStoringProtocol) {
        self.onboardingRepository = onboardingRepository
        self.userDefaults = userDefaults
    }
}
