//Rectangle Map
// 1 | 2 | 3
// 4 | 5 | 6

import Foundation
import SwiftUI

//screen 1
struct InvisibleButtons3: View{

    @State private var isActive = false
    @State private var position = CGPoint(x: 412, y: 1100)
    @State private var tapped = false
    @State private var nextScreenTime = 1.0

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
                        
                        //timer to go to the next screen
                        Timer.scheduledTimer(withTimeInterval: nextScreenTime, repeats: false) { timer in
                            isActive = true
                            isRunning = false

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
                        Win()
                        
                        //timer to go to the next screen
                        Timer.scheduledTimer(withTimeInterval: nextScreenTime, repeats: false) { timer in
                            isActive = true
                            isRunning = false

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
                            isActive = true
                            isRunning = false

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
                            isActive = true
                            isRunning = false

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
                            isActive = true
                            isRunning = false

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
                        Lose()
                        
                        //timer to go to the next screen
                        Timer.scheduledTimer(withTimeInterval: nextScreenTime, repeats: false) { timer in
                            isActive = true
                            isRunning = false

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
        
        if isActive{
            Gameplay4()
        }
        
    }
    
    
}

