//
//  Gameplay.swift
//  Footmath
//
//  Created by Guilherme Ferreira Lenzolari on 08/04/23.
//

import Foundation
import SwiftUI

struct Gameplay3: View{
    @State var timerRunning = true
    @State var countDownTimer = 15
    
    var body: some View{
        if timerRunning {
            
            ZStack{
                
                
                Image("GameplayBackground2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.top)
                
                Scoreboard()
                
                Group{
                    Text(operation3)
                        .foregroundColor(.white)
                        .position(x:417, y: 265)
                    Text(results3[0].description)
                        .position(x:210, y: 525)
                    Text(results3[1].description)
                        .position(x:417, y: 525)
                    Text(results3[2].description)
                        .position(x:624, y: 525)
                    Text(results3[3].description)
                        .position(x:210, y: 655)
                    Text(results3[4].description)
                        .position(x:417, y: 655)
                    Text(results3[5].description)
                        .position(x:624, y: 655)
                }.font(Font.custom("8-bit Arcade In", size:120))
                
                //timer
                        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
                        Text("\(countDownTimer)")
                          .onReceive(timer){_ in
                            if countDownTimer > 0 && timerRunning{
                                countDownTimer -= 1
                            }else{
                                timerRunning = false
                                Lose()
                            }
                          }.font(Font.custom("8-bit Arcade In", size:140))
                          .position(x:722, y: 118)
                          .foregroundColor(.white)
                
                //Botões de click
                InvisibleButtons3(isRunning: $timerRunning)

            }.navigationBarBackButtonHidden(true)
        } else {
            Gameplay4()
        }
    }
}
