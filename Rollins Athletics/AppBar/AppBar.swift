//
//  AppBar.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/31/22.
//

import SwiftUI

struct AppBar: View {
    @Binding var expanded: Bool
    var body: some View {
        // App Bar
        VStack{
            HStack{
                
                // Tars logo, expands Menu when clicked on
                Lesezeichen(expanded: $expanded)
                    .offset(x: 20, y: 10)
                
                // Header of expanded Menu
                if expanded{
                    TextAnimation()
                        .offset(x: -60)
                }
                
                Spacer()
                
                // XMark to close expanded menu
                CloseMenu(expanded: $expanded)
                    .padding()
            }
            .frame(height: expanded ? 35 : 20)
            
            // Live Stats and Live Video Link shown when Menu is expanded
            LiveData()
            .foregroundColor(.white)
            .opacity(expanded ? 1 : 0)
            .frame(height: expanded ? 35 : 0)
            .background(Color(red: 0 / 255, green: 44 / 255, blue: 95 / 255)) // Rollins Blue
        }
        .background(.blue)
        .zIndex(1) // put HStack to foreground
    }
}
