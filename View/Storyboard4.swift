//
//  File.swift
//  
//
//  Created by Guilherme Ferreira Lenzolari on 06/04/23.
//

import Foundation
import SwiftUI

//Storyboard 4 --> Choose your team
struct Storyboard4: View {
    
    @State var isActive = false
    
    
    var body: some View{
        ZStack{
            Image("Storyboard 5")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)
            
            //            ZStack{
            //                NavigationLink{
            //                    Tutorial1()
            //                        .onTapGesture {
            //                                gameController.teamChoice = "red"
            //                                print(gameController.teamChoice)
            //                    }
            //
            //                } label: {
            //                    Image("red button")
            //                }.padding(.top, 880).padding(.trailing, 400)
            //                }
            //
            //            ZStack{
            //                NavigationLink{
            //                    Tutorial1()
            //                } label: {
            //                    Image("blue button")
            //
            //                }.padding(.top, 880).padding(.leading, 400).onTapGesture {
            //                        gameController.teamChoice = "blue"
            //                        print(gameController.teamChoice)
            //            }
            
            Rectangle()
                .onTapGesture{
                    gameController.teamChoice = "blue"
                    isActive = true
                    print("blue")
                }
                .foregroundColor(.black).opacity(0.1)
                .frame(width: 350, height: 150)
                .foregroundColor(.blue)
                .padding(.top, 880).padding(.leading, 370)
                
            
            
            Rectangle()
                .onTapGesture{
                    gameController.teamChoice = "red"
                    isActive = true
                    print("red")
                }
                .foregroundColor(.black).opacity(0.1)
                .frame(width: 350, height: 150)
                .foregroundColor(.blue)
                .padding(.top, 880).padding(.trailing, 370)
            
        }.navigationBarBackButtonHidden(true)
        
        NavigationLink("",destination: Tutorial1(),isActive: $isActive)

    }

}


