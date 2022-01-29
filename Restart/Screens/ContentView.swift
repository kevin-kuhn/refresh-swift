//
//  ContentView.swift
//  Restart
//
//  Created by kevin mulinari kuhn on 26/01/22.
//

import SwiftUI

struct ContentView: View {
    //wrapper da storage
    
    @AppStorage("onboarding") var isOnboardingActive: Bool = true
    var body: some View {
        ZStack {
            if isOnboardingActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
