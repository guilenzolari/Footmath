//Rectangle Map
// 1 | 2 | 3
// 4 | 5 | 6

import Foundation
import SwiftUI

//screen 1
struct InvisibleButtons5: View{


    @State private var position = CGPoint(x: 412, y: 1100)
    @State private var tapped = false
    @State private var nextScreen = false
    @State private var nextScreenTime = 1.0
    
    @State private var goToRedVictory = false
    @State private var goToBlueVictory = false
    @State private var goToDefeat = false

    @Binding var isRunning:Bool
    
    var body: some View {
            ZStack{
                
                //Rectangle 1
                Rectangle()
                    .frame(width: 185, height: 100)
                    .position(x:210, y: 535)
                    .onTapGesture {
                                                                    
                        if !tapped{
                            Lose()
                            
                            print("Click no botao q da tela 5")

                                                        
                            //timer to go to the next screen
                            Timer.scheduledTimer(withTimeInterval: nextScreenTime, repeats: false) { timer in
                                isRunning = false

                                //conditions to active the diferentes navigation links
                                if (winOrLose.reduce(0, +) >= 3){
                                    if (gameController.teamChoice == "red"){
                                        goToRedVictory = true
                                        goToBlueVictory = false
                                        goToDefeat = false
                                    } else {
                                        goToBlueVictory = true
                                        goToRedVictory = false
                                        goToDefeat = false
                                    }
                                } else {
                                    goToDefeat = true
                                    goToBlueVictory = false
                                    goToRedVictory = false
                                }
                                print("MuDOU a variavel")

                            }
                            
                            //ball animation
                            withAnimation{
                                self.position = CGPoint(x:210, y: 535)
                            }
                            
                            tapped = true
                            
                        }
                    }.opacity(0.1)
                    .foregroundColor(colorPink)
                
                //Rectangle 2
                Rectangle()
                    .frame(width: 185, height: 100)
                    .position(x:417, y: 535)
                    .onTapGesture {
                        if !tapped{
                            Lose()

                            
                            //timer to go to the next screen
                            Timer.scheduledTimer(withTimeInterval: nextScreenTime, repeats: false) { timer in
                                isRunning = false

                                //conditions to active the diferentes navigation links
                                if (winOrLose.reduce(0, +) >= 3){
                                    if (gameController.teamChoice == "red"){
                                        goToRedVictory = true
                                        goToBlueVictory = false
                                        goToDefeat = false
                                    } else {
                                        goToBlueVictory = true
                                        goToRedVictory = false
                                        goToDefeat = false
                                    }
                                } else {
                                    goToDefeat = true
                                    goToBlueVictory = false
                                    goToRedVictory = false
                                }
                            }
                            
                            withAnimation{
                                self.position = CGPoint(x:417, y: 535)
                            }
                        }
                        tapped = true
                    }
                
                //Rectangle 3
                Rectangle()
                    .frame(width: 185, height: 100)
                    .position(x:624, y: 535)
                    .onTapGesture {
                        if !tapped{
                            Lose()

                            
                            //timer to go to the next screen
                            Timer.scheduledTimer(withTimeInterval: nextScreenTime, repeats: false) { timer in
                                isRunning = false

                                //conditions to active the diferentes navigation links
                                if (winOrLose.reduce(0, +) >= 3){
                                    if (gameController.teamChoice == "red"){
                                        goToRedVictory = true
                                        goToBlueVictory = false
                                        goToDefeat = false
                                    } else {
                                        goToBlueVictory = true
                                        goToRedVictory = false
                                        goToDefeat = false
                                    }
                                } else {
                                    goToDefeat = true
                                    goToBlueVictory = false
                                    goToRedVictory = false
                                }
                            }
                            
                            withAnimation{
                                self.position = CGPoint(x:624, y: 535)
                            }
                        }
                        tapped = true
                    }
                
                //Rectangle 4
                Rectangle()
                    .frame(width: 185, height: 100)
                    .position(x:210, y: 665)
                    .onTapGesture {
                        if !tapped{
                            Lose()

                            
                            //timer to go to the next screen
                            Timer.scheduledTimer(withTimeInterval: nextScreenTime, repeats: false) { timer in
                                isRunning = false

                                //conditions to active the diferentes navigation links
                                if (winOrLose.reduce(0, +) >= 3){
                                    if (gameController.teamChoice == "red"){
                                        goToRedVictory = true
                                        goToBlueVictory = false
                                        goToDefeat = false
                                    } else {
                                        goToBlueVictory = true
                                        goToRedVictory = false
                                        goToDefeat = false
                                    }
                                } else {
                                    goToDefeat = true
                                    goToBlueVictory = false
                                    goToRedVictory = false
                                }
                            }
                            
                            withAnimation{
                                self.position = CGPoint(x:210, y: 665)
                            }
                        }
                        tapped = true
                    }
                
                //Rectangle 5
                Rectangle()
                    .frame(width: 185, height: 100)
                    .position(x:417, y: 665)
                    .onTapGesture {
                        if !tapped{
                            Lose()

                            
                            //timer to go to the next screen
                            Timer.scheduledTimer(withTimeInterval: nextScreenTime, repeats: false) { timer in
                                isRunning = false

                                //conditions to active the diferentes navigation links
                                if (winOrLose.reduce(0, +) >= 3){
                                    if (gameController.teamChoice == "red"){
                                        goToRedVictory = true
                                        goToBlueVictory = false
                                        goToDefeat = false
                                    } else {
                                        goToBlueVictory = true
                                        goToRedVictory = false
                                        goToDefeat = false
                                    }
                                } else {
                                    goToDefeat = true
                                    goToBlueVictory = false
                                    goToRedVictory = false
                                }
                            }
                            
                            withAnimation{
                                self.position = CGPoint(x:417, y: 665)
                            }
                        }
                        tapped = true
                    }
                
                //Rectangle 6
                Rectangle()
                    .frame(width: 185, height: 100)
                    .position(x:624, y: 665)
                    .onTapGesture {
                        if !tapped{
                            Win()
                            
                            //timer to go to the next screen
                            Timer.scheduledTimer(withTimeInterval: nextScreenTime, repeats: false) { timer in
                                isRunning = false

                                //conditions to active the diferentes navigation links
                                if (winOrLose.reduce(0, +) >= 3){
                                    if (gameController.teamChoice == "red"){
                                        goToRedVictory = true
                                        goToBlueVictory = false
                                        goToDefeat = false
                                    } else {
                                        goToBlueVictory = true
                                        goToRedVictory = false
                                        goToDefeat = false
                                    }
                                } else {
                                    goToDefeat = true
                                    goToBlueVictory = false
                                    goToRedVictory = false
                                }
                            }
                            
                            withAnimation{
                                self.position = CGPoint(x:624, y: 665)
                            }
                        }
                        tapped = true
                    }
                
            }.opacity(0.1)
                .foregroundColor(colorPink)
        
        //Ball image
        Image("ball")
            .position(position)
        

        
        if goToDefeat || goToBlueVictory || goToRedVictory {
            if goToDefeat{
                Defeat()
            }else{
                if goToBlueVictory {
                    BlueVictory()
                }else{
                    RedVictory()
                }
            }
        }
      
    }  
}

