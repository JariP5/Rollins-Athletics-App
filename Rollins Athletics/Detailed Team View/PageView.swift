//
//  PageView.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/31/22.
//

import SwiftUI
import NavigationStack

struct PageView: View {
    
    @Binding var current: String // active tab bar
    var tabs: [String]
    @Binding var selectedPage: Int
    var team: Team
    
    var body: some View {
        // Page View
        TabView (selection: $selectedPage){
            
            
            SinglePage(tag: 0, tab: tabs[0], team: team)
            SinglePage(tag: 1, tab: tabs[1], team: team)
            SinglePage(tag: 2, tab: tabs[2], team: team)
            if (tabs.count >= 4) {
                SinglePage(tag: 3, tab: tabs[3], team: team)
            }
            
        }
        .background(.bar)
        .frame(width: UIScreen.screenWidth)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .onChange(of: selectedPage) { newIdx in
            withAnimation{current = tabs[newIdx]}
        }
    }
}
