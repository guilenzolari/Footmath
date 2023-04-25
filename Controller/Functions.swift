//
//  File.swift
//  
//
//  Created by Guilherme Ferreira Lenzolari on 10/04/23.
//

import Foundation
import SwiftUI

func Win(){
    winOrLose.append(1)
}

//func Lose() -> EmptyView {
//    winOrLose.append(0)
//    return EmptyView()
//}

func Lose() {
    winOrLose.append(0)
}

func EmptyArray() -> EmptyView {
    winOrLose.removeAll()
    return EmptyView()
}


//struct PrintView: View {
//    
//    init(_ text: String) {
//        print(text)
//    }
//    
//    var body: some View {
//        EmptyView()
//    }
//    
//}
