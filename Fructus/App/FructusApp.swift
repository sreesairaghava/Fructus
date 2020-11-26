//
//  FructusApp.swift
//  Fructus
//
//  Created by Sree Sai Raghava Dandu on 22/11/20.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }
            else{
                ContentView()
            }
            
        }
    }
}
