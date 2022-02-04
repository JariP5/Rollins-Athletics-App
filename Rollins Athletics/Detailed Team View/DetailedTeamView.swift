//
//  Navigation.swift
//  College Soccer Scores
//
//  Created by Jari Polm on 10.09.21.
//

import SwiftUI
import NavigationStack

struct DetailedTeamView: View {
    
    @State var current = "Schedule" // active tab bar
    @State var selectedPage = 0
    var team: Team
    var tabs: [String]
    
    var body: some View {
        VStack(spacing: 0){
            // App Bar...
            VStack(spacing: 0){
                HStack{
                    
                    // back button
                    PopView {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.blue)
                            .frame(width: 30)
                    }
                    
                    // spacers and empty text are used to keep image in the name
                    // and back button to the left
                    Spacer()
                    VStack {
                        Image(team.sport.name)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                        Text("\(team.gender) \(team.sport.name)").fontWeight(.heavy).foregroundColor(.blue)
                    }
                    Spacer()
                    Text("")
                        .frame(width: 30)
                }
                .padding(.horizontal)
                .padding(.bottom)

                TabBar(current: $current, headers: tabs, selectedPage: $selectedPage)
            }
            .padding(.top, 15)
            .background(Color.white)
            
            PageView(current: $current, tabs: tabs, selectedPage: $selectedPage, team: team)
        }
    }
}


