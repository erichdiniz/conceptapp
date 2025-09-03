//
//  OnboardingView.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

import Foundation
import SwiftUI

struct OnboardingView: View {
    
    let presenter: OnboardingPresenterProtocol
    @StateObject private var adapter = OnboardingViewAdapter()

    init(presenter: OnboardingPresenterProtocol) {
        self.presenter = presenter
    }
    var body: some View {
        VStack {
            Image("concept")
            Text(adapter.pages[adapter.currentIndex].title)
            Text(adapter.pages[adapter.currentIndex].subtitle)
        }
        .padding()
        .onAppear {
            presenter.attach(view: adapter)
            presenter.onAppear()
            presenter.onNext()
            presenter.onSkip()
        }
    }}
