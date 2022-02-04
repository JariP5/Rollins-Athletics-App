//
//  SinglePage.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/31/22.
//

import SwiftUI
import NavigationStack

struct SinglePage: View {
    
    var tag: Int
    var tab: String
    var team: Team
    @StateObject var standingsModel = StandingsViewModel()
    @StateObject var scheduleModel = ScheduleViewModel()
    
    var body: some View {
        
        ZStack (alignment: .leading){
            ScrollView(.vertical, showsIndicators: false) {
                
                if (tab == "Schedule") {
                    ScheduleView(scheduleModel: scheduleModel, team: team)
                } else if (tab == "Standings") {
                    Standings(viewModel: standingsModel, link: team.abbr)
                } else if (tab == "Roster") {
                    Text("Roster")
                } else if (tab == "News") {
                    Text("News")
                }
            }
            .frame(width: UIScreen.screenWidth)
            .background(.bar)
            DragContainer()
        }.tag(tag)
        
    }
}

private struct DragContainer: View {
    @State private var offset = CGSize.zero
    @EnvironmentObject private var navigationStack: NavigationStack
    var body: some View {
        // invisble rectangle overlaying scrollview
        // to be able swipe back and pop view
        Rectangle()
            .fill(.white)
            .opacity(0.001)
            .frame(idealWidth: 20, maxWidth: 20, maxHeight: .infinity)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        self.offset = gesture.translation
                    }
                    .onEnded { value in
                        if abs(self.offset.width) > 50 {
                            if value.startLocation.x <= 20 {
                                self.navigationStack.pop()
                            }
                        } else {
                            self.offset = .zero
                        }
                    }
            )
    }
}
