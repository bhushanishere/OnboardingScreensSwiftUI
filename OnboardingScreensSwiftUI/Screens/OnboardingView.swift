//
//  OnboardingView.swift
//  OnboardingScreensSwiftUI
//
//  Created by Bhushan Borse DXC on 30/04/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var onboardingData = SlidingData.perview()

    var body: some View {
        TabView {
            ForEach(onboardingData) { item in
                ZStack{
                    VStack {
                        Image(systemName: item.icon)
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 120, height: 120)
                        Text(item.title).foregroundColor(.white)
                            .font(.system(size: 22))
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                        Text(item.description).foregroundStyle(.white)
                            .font(.system(size: 18))
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            }
            
            .padding(.all, 5)
        }
        .frame(width: UIScreen.main.bounds.width, height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
}
