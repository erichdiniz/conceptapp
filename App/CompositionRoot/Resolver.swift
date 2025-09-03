//
//  Resolver.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

protocol Resolver {
    //core services
    var keyValueStore: KeyValueStoringProtocol { get }
    //Shared Repositories - protocol only
    var onboardingRepository: OnboardingRepositoryProtocol { get }
    
}
