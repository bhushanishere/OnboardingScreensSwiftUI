//
//  ContentView.swift
//  OnboardingScreensSwiftUI
//
//  Created by Bhushan Borse DXC on 30/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.ignoresSafeArea()
                LazyHStack {
                   OnboardingView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
