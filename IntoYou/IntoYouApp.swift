//
//  IntoYouApp.swift
//  IntoYou
//
//  Created by Sijia Ma on 11/15/24.
//

import SwiftUI

@main
struct IntoYouApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView { // Root NavigationView
            Onboarding() // Make Onboarding the initial view
            }
        }
    }
}

