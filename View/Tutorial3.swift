//
//  Tutorial3.swift
//  Footmath
//
//  Created by Guilherme Ferreira Lenzolari on 07/04/23.
//

import Foundation
import SwiftUI


struct Tutorial3: View {
    var body: some View{
        ZStack{
            Image("tutorial 6.3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)
            
            NavigationLink{
                           Tutorial4()
                        } label: {
                            Image("next button")
                                .padding(.top, 880)
                        }

            VStack{
                Text(tutorial3)
                    .font(Font.custom("8-bit Arcade In", size:80))
                    .foregroundColor(colorYellow)
                    .font(.system(size: 40))
                    .padding(.top, 800)
                    .padding(.horizontal, 48)
                    .multilineTextAlignment(.center)
                Spacer()
            }
        }.navigationBarBackButtonHidden(true)
    }
}

