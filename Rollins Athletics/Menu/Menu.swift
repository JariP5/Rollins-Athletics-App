//
//  ExpandedMenu.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/29/22.
//

import SwiftUI

struct Menu: View {
    
    @Binding var expanded: Bool
    
    var body: some View {
        // Expanded Menu
        HStack(spacing: 0) {
            
            MenuList()
            .frame(width: UIScreen.screenWidth / 10 * 7)
            
            // Blur The background
            // Make it use all width and height
            VStack{
                HStack {
                    Text("")
                    Spacer()
                }
                Spacer()
            }
            .background(Blur(style: .systemUltraThinMaterial))
            .onTapGesture {
                withAnimation{
                    expanded = false
                }
            }
        }
        .opacity(expanded ? 1 : 0)
        .ignoresSafeArea() // to blur bottom end of the screen
    }
}
