//
//  File.swift
//
//
//  Created by Guilherme Ferreira Lenzolari on 14/04/23.
//

import Foundation
import SwiftUI

//positions of Signals
var positionX1: CGFloat = 170
var positionY1: CGFloat = 135

var positionX2: CGFloat = 77
var positionY2: CGFloat = 135

var positionX3: CGFloat = 123
var positionY3: CGFloat = 135

var positionX4: CGFloat = 123 + 48
var positionY4: CGFloat = 135

var positionX5: CGFloat = 123 + 94
var positionY5: CGFloat = 135

var positionX6: CGFloat = 123 + 94 + 48
var positionY6: CGFloat = 135

struct Scoreboard: View{
        
    var body: some View{
        
        //screen 1 - O
        if (winOrLose == []){
            Image("emptyScoreboard")
                .position(x: positionX1, y:positionY1)
            
        }
        
        //screen2 - 1
        else if(winOrLose.count == 1){
            Image("emptyScoreboard")
                .position(x: positionX1, y:positionY1)
            
            if(winOrLose[0] == 1){
                Image("GreenSignal")
                    .position(x:positionX2, y:positionY2)
            }else{
                Image("RedSignal")
                    .position(x:positionX2, y:positionY2)
            }
            
            
        }
        
        //screen3 - 2
        else if(winOrLose.count == 2){
            Image("emptyScoreboard")
                .position(x: positionX1, y:positionY1)
            
            if(winOrLose[0] == 1){
                Image("GreenSignal")
                    .position(x:positionX2, y:positionY2)
                
                if(winOrLose[1] == 1){
                    Image("GreenSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    
                }else{
                    Image("RedSignal")
                        .position(x:positionX3, y:positionY2)
                }
                
                
            }else{
                Image("RedSignal")
                    .position(x:positionX2, y:positionY2)
                
                if(winOrLose[1] == 1){
                    Image("GreenSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    
                }else{
                    Image("RedSignal")
                        .position(x:positionX3, y:positionY2)
                }
                
            }
            
            
        }
        
        
        //screen4 - 3
        else if(winOrLose.count == 3){
            Image("emptyScoreboard")
                .position(x: positionX1, y:positionY1)
            
            if(winOrLose[0] == 1){
                Image("GreenSignal")
                    .position(x:positionX2, y:positionY2)
                
                if(winOrLose[1] == 1){
                    Image("GreenSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                    }
                    
                    
                }else{
                    Image("RedSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                    }
                }
                
                
            }else{
                Image("RedSignal")
                    .position(x:positionX2, y:positionY2)
                
                if(winOrLose[1] == 1){
                    Image("GreenSignal")
                        .position(x:positionX3, y:positionY2)
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                    }
                    
                    
                }else{
                    Image("RedSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                    }
                }
            }
        }
        
        
        //screen5 - 4
        else if(winOrLose.count == 4){
            Image("emptyScoreboard")
                .position(x: positionX1, y:positionY1)
            
            if(winOrLose[0] == 1){
                Image("GreenSignal")
                    .position(x:positionX2, y:positionY2)
                
                if(winOrLose[1] == 1){
                    Image("GreenSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                        }
                        
                        
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                        }
                    }
                    
                    
                }else{
                    Image("RedSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                        }
                        
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                        }
                    }
                }
                
                
            }else{
                Image("RedSignal")
                    .position(x:positionX2, y:positionY2)
                
                if(winOrLose[1] == 1){
                    Image("GreenSignal")
                        .position(x:positionX3, y:positionY2)
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                        }
                        
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                        }
                    }
                    
                    
                }else{
                    Image("RedSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                        }
                        
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                        }
                    }
                }
            }
        }
        
        //screen6 - 5

        else if(winOrLose.count == 5){
            Image("emptyScoreboard")
                .position(x: positionX1, y:positionY1)
            
            if(winOrLose[0] == 1){
                Image("GreenSignal")
                    .position(x:positionX2, y:positionY2)
                
                if(winOrLose[1] == 1){
                    Image("GreenSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                           
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                        }
                        
                        
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                            
                            
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                        }
                    }
                    
                    
                }else{
                    Image("RedSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                            
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                        }
                        
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                           
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                            
                        }
                    }
                }
                
                
            }else{
                Image("RedSignal")
                    .position(x:positionX2, y:positionY2)
                
                if(winOrLose[1] == 1){
                    Image("GreenSignal")
                        .position(x:positionX3, y:positionY2)
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                            
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                        }
                        
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                            
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                            
                        }
                    }
                    
                    
                }else{
                    Image("RedSignal")
                        .position(x:positionX3, y:positionY2)
                    
                    if(winOrLose[2] == 1){
                        Image("GreenSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                            
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                            
                        }
                        
                    } else{
                        Image("RedSignal")
                            .position(x:positionX4, y:positionY2)
                        
                        if(winOrLose[3] == 1){
                            Image("GreenSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                            
                        }else{
                            Image("RedSignal")
                                .position(x:positionX5, y:positionY2)
                            
                            if(winOrLose[4] == 1){
                                Image("GreenSignal")
                                    .position(x:positionX6, y:positionY2)
                            }else{
                                Image("RedSignal")
                                    .position(x:positionX6, y:positionY2)
                            }
                        }
                    }
                }
            }
        }
    }
}

