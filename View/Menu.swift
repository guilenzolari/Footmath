import Foundation
import SwiftUI

//Tela menu
struct Menu: View {
    var body: some View {
        ZStack {
            Image("BackMenu")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)

            ZStack{
                NavigationLink{
                    Storyboard1()
                            } label: {
                                Image("Start button")}
                                    .padding(.top, 880)
            }.navigationBarBackButtonHidden(true)
        }
    }
}
