//
//  DIContainer.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

import Foundation

final class DIContainer: Resolver {
    // Core singletons
    lazy var keyValueStore: KeyValueStoringProtocol = DefaultUserDefaultsStore(userDefaults: .standard)

    // Repositories (built from core services)
    lazy var onboardingRepository: OnboardingRepositoryProtocol =
        DefaultOnboardingRepository(local: DefaultOnboardingLocalDataSource(store: keyValueStore))
}
