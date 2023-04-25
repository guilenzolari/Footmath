//
//  Tutorial4.swift
//  Footmath
//
//  Created by Guilherme Ferreira Lenzolari on 07/04/23.
//

import Foundation
import SwiftUI


struct Tutorial4: View {
    var body: some View{
        ZStack{
            Image("tutorial 6.4")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)
            
            NavigationLink{
                           Tutorial5()
                        } label: {
                            Image("next button")
                                .padding(.top, 880)
                        }

            VStack{
                Text(tutorial4)
                    .font(Font.custom("8-bit Arcade In", size:80))
                    .foregroundColor(colorYellow)
                    .font(.system(size: 40))
                    .padding(.top, 780)
                    .padding(.horizontal, 48)
                    .multilineTextAlignment(.center)
                Spacer()
            }
        }.navigationBarBackButtonHidden(true)
    }
}

