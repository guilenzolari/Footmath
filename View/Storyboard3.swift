//
//  Storyboard3.swift
//  Footmath
//
//  Created by Guilherme Ferreira Lenzolari on 06/04/23.
//

import Foundation
import SwiftUI

//Storyboard 3 --> footmath cup

struct Storyboard3: View {
    var body: some View{
        ZStack{
            Image("Storyboard 3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)
         
            ZStack{
                NavigationLink{
                                Storyboard4()
                            } label: {
                                Image("next button")
                                    .padding(.top, 880)
                            }
            }


//            VStack{
//                Text(storyboard3)
//                    .font(Font.custom("8-bit Arcade In", size:70))
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
