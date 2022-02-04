//
//  Lesezeichen.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/29/22.
//

import SwiftUI

struct Lesezeichen: View {
    @Binding var expanded: Bool
    var body: some View {
        // Rectangle to open up expanded Menu
        ZStack {
            Rectangle()
                .foregroundColor(.blue)
                .shadow(color: Color.black.opacity(0.5), radius: 2, x: 0, y: 5)
                .frame(width: 70, height: 80)
            
            Image("Tars")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
        }
        .onTapGesture {
            withAnimation{
                expanded.toggle()
            }
        }
        .opacity(expanded ? 0 : 1)
    }
}
