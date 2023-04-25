//
//  File.swift
//  
//
//  Created by Guilherme Ferreira Lenzolari on 14/04/23.
//

import Foundation
import SwiftUI

class GameController: ObservableObject {
    @Published var countDownTimer: Int = 60
    @Published var timerRunning:Bool = true
    @Published var teamChoice:String = "empty"
}
