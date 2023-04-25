//
//  Storyboard2.swift
//  Footmath
//
//  Created by Guilherme Ferreira Lenzolari on 06/04/23.
//

import SwiftUI
import Foundation

//Storyboard 2 --> talking about math
struct Storyboard2: View {
    var body: some View{
        ZStack{
            Image("Storyboard 2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)
            
            ZStack{
                NavigationLink{
                                Storyboard3()
                            } label: {
                                Image("next button")
                                    .padding(.top, 880)
                            }
            }


//            VStack{
//                Text(storyboard2)
//                    .font(Font.custom("8-bit Arcade In", size:80))
//                    .foregroundColor(colorYellow)
//                    .font(.system(size: 40))
//                    .padding(.top, 77)
//                    .padding(.horizontal, 48)
//                    .multilineTextAlignment(.center)
//                Spacer()
//            }
        }.navigationBarBackButtonHidden(true)
    }
}
