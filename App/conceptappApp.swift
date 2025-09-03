//
//  conceptappApp.swift
//  conceptapp
//
//  Created by Snow on 28/07/25.
//

import SwiftUI
import UIKit

@main
struct conceptappApp: App {
    var body: some Scene {
        WindowGroup {
            OnboardingAssembly().makeModule(resolver: DIContainer()).view
        }
    }
}
