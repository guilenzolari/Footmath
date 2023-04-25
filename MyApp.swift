import SwiftUI

@main
struct MyApp: App {
    
    
    
    init() {
        let fontURL = Bundle.main.url(forResource: "8-bit Arcade In", withExtension: "ttf")!
        CTFontManagerRegisterFontsForURL(fontURL as CFURL, CTFontManagerScope.process, nil)
      }
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView  {
                Menu()
            }
            .navigationViewStyle(.stack)
            .environmentObject(gameController)
        }
    }
}
