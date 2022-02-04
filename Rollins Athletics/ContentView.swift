//
//  ContentView.swift
//  College Soccer Scores
//
//  Created by Jari Polm on 08.09.21.
//

import SwiftUI
import NavigationStack

struct ContentView: View {
    @State var expanded = false // is the menu expanded
    
    var body: some View {
        NavigationStackView{
            VStack(spacing: 4) {
                
                AppBar(expanded: $expanded)

                ZStack(alignment: .leading) {
                    
                    FirstPage()
                    Menu(expanded: $expanded)
                }
            }
            .background(Color(red: 0 / 255, green: 44 / 255, blue: 95 / 255))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
