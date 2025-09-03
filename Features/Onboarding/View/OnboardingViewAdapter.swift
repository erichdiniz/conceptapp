//
//  OnboardingViewAdapter.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 02/09/25.
//

import Foundation
import Combine

protocol OnboardingViewRenderable: AnyObject {
    func render(pages: [OnboardingPage], currentIndex: Int)
}

final class OnboardingViewAdapter: ObservableObject, OnboardingViewRenderable {
    @Published var pages: [OnboardingPage] = []
    @Published var currentIndex: Int = 0

    func render(pages: [OnboardingPage], currentIndex: Int) {
        self.pages = pages
        self.currentIndex = currentIndex
    }
}
