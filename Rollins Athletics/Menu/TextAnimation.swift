//
//  TextAnimation.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/29/22.
//

import SwiftUI

struct TextAnimation: View {
    
    @State var showR = false
    @State var showo = false
    @State var showl1 = false
    @State var showl2 = false
    @State var showi = false
    @State var shown = false
    @State var shows = false
    
    var body: some View {
        
        HStack() {
            Text("R")
                .opacity(showR ? 1 : 0)
            Text("o")
                .opacity(showo ? 1 : 0)
            Text("l")
                .opacity(showl1 ? 1 : 0)
            Text("l")
                .opacity(showl2 ? 1 : 0)
            Text("i")
                .opacity(showi ? 1 : 0)
            Text("n")
                .opacity(shown ? 1 : 0)
            Text("s")
                .opacity(shows ? 1 : 0)
        }
        .font(.system(size: 35, weight: .bold, design: .default))
        .foregroundColor(.white)
        .onAppear{
            withAnimation(Animation.linear.delay(0.1)){
                    self.showR = true
            }
            withAnimation(Animation.linear.delay(0.2)){
                    self.showo = true
            }
            withAnimation(Animation.linear.delay(0.3)){
                    self.showl1 = true
            }
            withAnimation(Animation.linear.delay(0.4)){
                    self.showl2 = true
            }
            withAnimation(Animation.linear.delay(0.5)){
                    self.showi = true
            }
            withAnimation(Animation.linear.delay(0.6)){
                    self.shown = true
            }
            withAnimation(Animation.linear.delay(0.7)){
                    self.shows = true
            }
        }
    }
}

