//
//  Storyboard1.swift
//  Footmath
//
//  Created by Guilherme Ferreira Lenzolari on 06/04/23.
//
import SwiftUI
import Foundation

//Storyboard 1 --> universe
struct Storyboard1: View {
    var body: some View{
        ZStack{
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            Image("Storyboard 1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)
                        
            ZStack{
                NavigationLink{
                               Storyboard2()
                            } label: {
                                Image("next button")
                                    .padding(.top, 880)
                            }
            }


//            VStack{
////                Text(storyboard1)
////                    .font(Font.custom("8-bit Arcade In", size:80))
////                    .foregroundColor(colorYellow)
////                    //.font(.system(size: 40))
////                    .padding(.top, 77)
////                    .padding(.horizontal, 48)
////                    .multilineTextAlignment(.center)
////                    .shadow(color:.black, radius: 1)
////                Spacer()
//            }
        }.navigationBarBackButtonHidden(true)
    }
}
