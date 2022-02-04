//
//  CloseMenu.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/29/22.
//

import SwiftUI

struct CloseMenu: View {
    @Binding var expanded: Bool
    var body: some View {
        // Xmark to close expanded Menu
        Image(systemName: "xmark")
            .foregroundColor(.white)
            .font(.system(size: 35))
            .onTapGesture {
                withAnimation{
                    expanded.toggle()
                }
            }
            .opacity(expanded ? 1 : 0)
    }
}
